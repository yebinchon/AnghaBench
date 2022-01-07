
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_event {int dummy; } ;
struct dvb_video_events {int eventw; int eventr; int overflow; int wait_queue; int lock; int * events; } ;
struct av7110 {struct dvb_video_events video_events; } ;


 int MAX_VIDEO_EVENT ;
 int memcpy (int *,struct video_event*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int wake_up_interruptible (int *) ;

void dvb_video_add_event(struct av7110 *av7110, struct video_event *event)
{
 struct dvb_video_events *events = &av7110->video_events;
 int wp;

 spin_lock_bh(&events->lock);

 wp = (events->eventw + 1) % MAX_VIDEO_EVENT;
 if (wp == events->eventr) {
  events->overflow = 1;
  events->eventr = (events->eventr + 1) % MAX_VIDEO_EVENT;
 }


 memcpy(&events->events[events->eventw], event, sizeof(struct video_event));
 events->eventw = wp;

 spin_unlock_bh(&events->lock);

 wake_up_interruptible(&events->wait_queue);
}
