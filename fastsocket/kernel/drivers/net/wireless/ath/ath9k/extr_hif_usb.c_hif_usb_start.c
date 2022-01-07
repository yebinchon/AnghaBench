
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_lock; int flags; } ;
struct hif_device_usb {TYPE_1__ tx; int flags; } ;


 int HIF_USB_START ;
 int HIF_USB_TX_STOP ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void hif_usb_start(void *hif_handle)
{
 struct hif_device_usb *hif_dev = (struct hif_device_usb *)hif_handle;
 unsigned long flags;

 hif_dev->flags |= HIF_USB_START;

 spin_lock_irqsave(&hif_dev->tx.tx_lock, flags);
 hif_dev->tx.flags &= ~HIF_USB_TX_STOP;
 spin_unlock_irqrestore(&hif_dev->tx.tx_lock, flags);
}
