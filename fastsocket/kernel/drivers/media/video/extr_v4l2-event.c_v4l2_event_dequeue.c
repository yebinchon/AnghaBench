
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device_shadow {scalar_t__ lock; } ;
struct v4l2_fh {int vdev; struct v4l2_events* events; } ;
struct v4l2_events {scalar_t__ navailable; int wait; } ;
struct v4l2_event {int dummy; } ;


 int ENOENT ;
 int __v4l2_event_dequeue (struct v4l2_fh*,struct v4l2_event*) ;
 int mutex_lock (scalar_t__) ;
 int mutex_unlock (scalar_t__) ;
 struct video_device_shadow* video_device_shadow_get (int ) ;
 int wait_event_interruptible (int ,int) ;

int v4l2_event_dequeue(struct v4l2_fh *fh, struct v4l2_event *event,
         int nonblocking)
{
 struct v4l2_events *events = fh->events;
 int ret;
 struct video_device_shadow *shvdev = video_device_shadow_get(fh->vdev);

 if (nonblocking)
  return __v4l2_event_dequeue(fh, event);


 if (shvdev && shvdev->lock)
  mutex_unlock(shvdev->lock);

 do {
  ret = wait_event_interruptible(events->wait,
            events->navailable != 0);
  if (ret < 0)
   break;

  ret = __v4l2_event_dequeue(fh, event);
 } while (ret == -ENOENT);

 if (shvdev && shvdev->lock)
  mutex_lock(shvdev->lock);

 return ret;
}
