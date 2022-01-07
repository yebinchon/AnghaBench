
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sa1111_dev {unsigned int skpcr_mask; } ;
struct sa1111 {int lock; scalar_t__ base; } ;


 scalar_t__ SA1111_SKPCR ;
 struct sa1111* sa1111_chip_driver (struct sa1111_dev*) ;
 unsigned int sa1111_readl (scalar_t__) ;
 int sa1111_writel (unsigned int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void sa1111_disable_device(struct sa1111_dev *sadev)
{
 struct sa1111 *sachip = sa1111_chip_driver(sadev);
 unsigned long flags;
 unsigned int val;

 spin_lock_irqsave(&sachip->lock, flags);
 val = sa1111_readl(sachip->base + SA1111_SKPCR);
 sa1111_writel(val & ~sadev->skpcr_mask, sachip->base + SA1111_SKPCR);
 spin_unlock_irqrestore(&sachip->lock, flags);
}
