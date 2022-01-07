
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_event {int dummy; } ;
struct dvb_video_events {size_t eventw; size_t eventr; int lock; int * events; int wait_queue; scalar_t__ overflow; } ;
struct av7110 {struct dvb_video_events video_events; } ;


 int EOVERFLOW ;
 int EWOULDBLOCK ;
 int MAX_VIDEO_EVENT ;
 int O_NONBLOCK ;
 int memcpy (struct video_event*,int *,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int dvb_video_get_event (struct av7110 *av7110, struct video_event *event, int flags)
{
 struct dvb_video_events *events = &av7110->video_events;

 if (events->overflow) {
  events->overflow = 0;
  return -EOVERFLOW;
 }
 if (events->eventw == events->eventr) {
  int ret;

  if (flags & O_NONBLOCK)
   return -EWOULDBLOCK;

  ret = wait_event_interruptible(events->wait_queue,
            events->eventw != events->eventr);
  if (ret < 0)
   return ret;
 }

 spin_lock_bh(&events->lock);

 memcpy(event, &events->events[events->eventr],
        sizeof(struct video_event));
 events->eventr = (events->eventr + 1) % MAX_VIDEO_EVENT;

 spin_unlock_bh(&events->lock);

 return 0;
}
