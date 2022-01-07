
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct hci_dev {int name; } ;
struct TYPE_7__ {int lock; struct hci_dev* hdev; TYPE_2__* p_dev; } ;
typedef TYPE_3__ btuart_info_t ;
struct TYPE_5__ {unsigned int BasePort1; } ;
struct TYPE_6__ {TYPE_1__ io; } ;


 int BT_ERR (char*,int ) ;
 int ENODEV ;
 scalar_t__ UART_IER ;
 scalar_t__ UART_MCR ;
 int btuart_hci_close (struct hci_dev*) ;
 int hci_free_dev (struct hci_dev*) ;
 scalar_t__ hci_unregister_dev (struct hci_dev*) ;
 int outb (int ,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int btuart_close(btuart_info_t *info)
{
 unsigned long flags;
 unsigned int iobase = info->p_dev->io.BasePort1;
 struct hci_dev *hdev = info->hdev;

 if (!hdev)
  return -ENODEV;

 btuart_hci_close(hdev);

 spin_lock_irqsave(&(info->lock), flags);


 outb(0, iobase + UART_MCR);


 outb(0, iobase + UART_IER);

 spin_unlock_irqrestore(&(info->lock), flags);

 if (hci_unregister_dev(hdev) < 0)
  BT_ERR("Can't unregister HCI device %s", hdev->name);

 hci_free_dev(hdev);

 return 0;
}
