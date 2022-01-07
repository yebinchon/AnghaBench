
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cafe_camera {int dev_lock; } ;


 int cafe_ctlr_dma (struct cafe_camera*) ;
 int cafe_ctlr_image (struct cafe_camera*) ;
 int cafe_set_config_needed (struct cafe_camera*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int cafe_ctlr_configure(struct cafe_camera *cam)
{
 unsigned long flags;

 spin_lock_irqsave(&cam->dev_lock, flags);
 cafe_ctlr_dma(cam);
 cafe_ctlr_image(cam);
 cafe_set_config_needed(cam, 0);
 spin_unlock_irqrestore(&cam->dev_lock, flags);
 return 0;
}
