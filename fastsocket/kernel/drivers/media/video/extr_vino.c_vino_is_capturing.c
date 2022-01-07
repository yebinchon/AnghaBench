
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vino_channel_settings {int capturing; int capture_lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline int vino_is_capturing(struct vino_channel_settings *vcs)
{
 int ret;
 unsigned long flags;

 spin_lock_irqsave(&vcs->capture_lock, flags);

 ret = vcs->capturing;

 spin_unlock_irqrestore(&vcs->capture_lock, flags);

 return ret;
}
