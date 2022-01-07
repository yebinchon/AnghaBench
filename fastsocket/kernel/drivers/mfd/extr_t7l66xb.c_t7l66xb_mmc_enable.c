
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct t7l66xb {int lock; scalar_t__ scr; int clk32k; } ;
struct TYPE_2__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;


 scalar_t__ SCR_DEV_CTL ;
 int SCR_DEV_CTL_MMC ;
 int clk_enable (int ) ;
 struct t7l66xb* platform_get_drvdata (struct platform_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tmio_ioread8 (scalar_t__) ;
 int tmio_iowrite8 (int ,scalar_t__) ;
 struct platform_device* to_platform_device (int ) ;

__attribute__((used)) static int t7l66xb_mmc_enable(struct platform_device *mmc)
{
 struct platform_device *dev = to_platform_device(mmc->dev.parent);
 struct t7l66xb *t7l66xb = platform_get_drvdata(dev);
 unsigned long flags;
 u8 dev_ctl;

 clk_enable(t7l66xb->clk32k);

 spin_lock_irqsave(&t7l66xb->lock, flags);

 dev_ctl = tmio_ioread8(t7l66xb->scr + SCR_DEV_CTL);
 dev_ctl |= SCR_DEV_CTL_MMC;
 tmio_iowrite8(dev_ctl, t7l66xb->scr + SCR_DEV_CTL);

 spin_unlock_irqrestore(&t7l66xb->lock, flags);

 return 0;
}
