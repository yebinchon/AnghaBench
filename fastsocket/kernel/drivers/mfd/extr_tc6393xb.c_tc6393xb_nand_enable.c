
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tc6393xb {int lock; scalar_t__ scr; } ;
struct TYPE_2__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;


 scalar_t__ SCR_GPI_BCR (int) ;
 int dev_dbg (TYPE_1__*,char*) ;
 struct tc6393xb* platform_get_drvdata (struct platform_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tmio_iowrite8 (int,scalar_t__) ;
 struct platform_device* to_platform_device (int ) ;

__attribute__((used)) static int tc6393xb_nand_enable(struct platform_device *nand)
{
 struct platform_device *dev = to_platform_device(nand->dev.parent);
 struct tc6393xb *tc6393xb = platform_get_drvdata(dev);
 unsigned long flags;

 spin_lock_irqsave(&tc6393xb->lock, flags);


 dev_dbg(&dev->dev, "SMD buffer on\n");
 tmio_iowrite8(0xff, tc6393xb->scr + SCR_GPI_BCR(1));

 spin_unlock_irqrestore(&tc6393xb->lock, flags);

 return 0;
}
