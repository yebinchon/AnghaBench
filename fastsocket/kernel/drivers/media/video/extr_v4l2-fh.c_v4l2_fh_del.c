
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device_shadow {int fh_lock; } ;
struct v4l2_fh {int list; int vdev; } ;


 int list_del_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct video_device_shadow* video_device_shadow_get (int ) ;

void v4l2_fh_del(struct v4l2_fh *fh)
{
 unsigned long flags;
 struct video_device_shadow *shvdev = video_device_shadow_get(fh->vdev);

 spin_lock_irqsave(&shvdev->fh_lock, flags);
 list_del_init(&fh->list);
 spin_unlock_irqrestore(&shvdev->fh_lock, flags);
}
