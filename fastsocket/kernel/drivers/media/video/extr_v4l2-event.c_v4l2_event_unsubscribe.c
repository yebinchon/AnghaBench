
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device_shadow {int fh_lock; } ;
struct v4l2_subscribed_event {int list; } ;
struct v4l2_fh {int vdev; } ;
struct v4l2_event_subscription {scalar_t__ type; } ;


 int ENOMEM ;
 scalar_t__ V4L2_EVENT_ALL ;
 int kfree (struct v4l2_subscribed_event*) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct v4l2_subscribed_event* v4l2_event_subscribed (struct v4l2_fh*,scalar_t__) ;
 int v4l2_event_unsubscribe_all (struct v4l2_fh*) ;
 struct video_device_shadow* video_device_shadow_get (int ) ;

int v4l2_event_unsubscribe(struct v4l2_fh *fh,
      struct v4l2_event_subscription *sub)
{
 struct v4l2_subscribed_event *sev;
 unsigned long flags;
 struct video_device_shadow *shvdev = video_device_shadow_get(fh->vdev);

 if (sub->type == V4L2_EVENT_ALL) {
  v4l2_event_unsubscribe_all(fh);
  return 0;
 }

 if (!shvdev)
  return -ENOMEM;

 spin_lock_irqsave(&shvdev->fh_lock, flags);

 sev = v4l2_event_subscribed(fh, sub->type);
 if (sev != ((void*)0))
  list_del(&sev->list);

 spin_unlock_irqrestore(&shvdev->fh_lock, flags);

 kfree(sev);

 return 0;
}
