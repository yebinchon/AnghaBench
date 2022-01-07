
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device_shadow {int fh_lock; } ;
struct v4l2_subscribed_event {int list; int type; } ;
struct v4l2_fh {struct v4l2_events* events; int vdev; } ;
struct v4l2_events {int subscribed; } ;
struct v4l2_event_subscription {int type; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int WARN_ON (int) ;
 int kfree (struct v4l2_subscribed_event*) ;
 struct v4l2_subscribed_event* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int * v4l2_event_subscribed (struct v4l2_fh*,int ) ;
 struct video_device_shadow* video_device_shadow_get (int ) ;

int v4l2_event_subscribe(struct v4l2_fh *fh,
    struct v4l2_event_subscription *sub)
{
 struct v4l2_events *events = fh->events;
 struct v4l2_subscribed_event *sev;
 unsigned long flags;
 struct video_device_shadow *shvdev = video_device_shadow_get(fh->vdev);

 if (fh->events == ((void*)0) || !shvdev) {
  WARN_ON(1);
  return -ENOMEM;
 }

 sev = kmalloc(sizeof(*sev), GFP_KERNEL);
 if (!sev)
  return -ENOMEM;

 spin_lock_irqsave(&shvdev->fh_lock, flags);

 if (v4l2_event_subscribed(fh, sub->type) == ((void*)0)) {
  INIT_LIST_HEAD(&sev->list);
  sev->type = sub->type;

  list_add(&sev->list, &events->subscribed);
  sev = ((void*)0);
 }

 spin_unlock_irqrestore(&shvdev->fh_lock, flags);

 kfree(sev);

 return 0;
}
