
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cafe_camera {int dev_lock; int state; int flags; int iowait; } ;


 int CF_DMA_ACTIVE ;
 int HZ ;
 int S_IDLE ;
 int cafe_ctlr_irq_disable (struct cafe_camera*) ;
 int cafe_ctlr_stop (struct cafe_camera*) ;
 int cam_err (struct cafe_camera*,char*) ;
 int mdelay (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static void cafe_ctlr_stop_dma(struct cafe_camera *cam)
{
 unsigned long flags;






 spin_lock_irqsave(&cam->dev_lock, flags);
 cafe_ctlr_stop(cam);
 spin_unlock_irqrestore(&cam->dev_lock, flags);
 mdelay(1);
 wait_event_timeout(cam->iowait,
   !test_bit(CF_DMA_ACTIVE, &cam->flags), HZ);
 if (test_bit(CF_DMA_ACTIVE, &cam->flags))
  cam_err(cam, "Timeout waiting for DMA to end\n");

 spin_lock_irqsave(&cam->dev_lock, flags);
 cam->state = S_IDLE;
 cafe_ctlr_irq_disable(cam);
 spin_unlock_irqrestore(&cam->dev_lock, flags);
}
