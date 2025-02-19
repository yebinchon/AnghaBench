
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct tc6393xb {int lock; scalar_t__ scr; } ;
struct TYPE_2__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;


 scalar_t__ SCR_CCR ;
 int SCR_CCR_USBCK ;
 scalar_t__ SCR_FER ;
 int SCR_FER_USBEN ;
 struct tc6393xb* dev_get_drvdata (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tmio_ioread16 (scalar_t__) ;
 int tmio_ioread8 (scalar_t__) ;
 int tmio_iowrite16 (int ,scalar_t__) ;
 int tmio_iowrite8 (int ,scalar_t__) ;

__attribute__((used)) static int tc6393xb_ohci_enable(struct platform_device *dev)
{
 struct tc6393xb *tc6393xb = dev_get_drvdata(dev->dev.parent);
 unsigned long flags;
 u16 ccr;
 u8 fer;

 spin_lock_irqsave(&tc6393xb->lock, flags);

 ccr = tmio_ioread16(tc6393xb->scr + SCR_CCR);
 ccr |= SCR_CCR_USBCK;
 tmio_iowrite16(ccr, tc6393xb->scr + SCR_CCR);

 fer = tmio_ioread8(tc6393xb->scr + SCR_FER);
 fer |= SCR_FER_USBEN;
 tmio_iowrite8(fer, tc6393xb->scr + SCR_FER);

 spin_unlock_irqrestore(&tc6393xb->lock, flags);

 return 0;
}
