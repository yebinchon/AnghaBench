
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device_shadow {int fh_lock; } ;
struct v4l2_kevent {int list; } ;
struct v4l2_fh {int vdev; struct v4l2_events* events; } ;
struct v4l2_events {unsigned int nallocated; int free; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int WARN_ON (int) ;
 struct v4l2_kevent* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct video_device_shadow* video_device_shadow_get (int ) ;

int v4l2_event_alloc(struct v4l2_fh *fh, unsigned int n)
{
 struct v4l2_events *events = fh->events;
 unsigned long flags;
 struct video_device_shadow *shvdev = video_device_shadow_get(fh->vdev);

 if (!events || !shvdev) {
  WARN_ON(1);
  return -ENOMEM;
 }

 while (events->nallocated < n) {
  struct v4l2_kevent *kev;

  kev = kzalloc(sizeof(*kev), GFP_KERNEL);
  if (kev == ((void*)0))
   return -ENOMEM;

  spin_lock_irqsave(&shvdev->fh_lock, flags);
  list_add_tail(&kev->list, &events->free);
  events->nallocated++;
  spin_unlock_irqrestore(&shvdev->fh_lock, flags);
 }

 return 0;
}
