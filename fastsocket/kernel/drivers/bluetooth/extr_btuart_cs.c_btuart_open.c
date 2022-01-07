
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct hci_dev {int owner; int ioctl; int destruct; int send; int flush; int close; int open; TYPE_3__* driver_data; int type; } ;
struct TYPE_8__ {struct hci_dev* hdev; int lock; TYPE_2__* p_dev; int * rx_skb; scalar_t__ rx_count; int rx_state; int txq; } ;
typedef TYPE_3__ btuart_info_t ;
struct TYPE_6__ {unsigned int BasePort1; } ;
struct TYPE_7__ {int dev; TYPE_1__ io; } ;


 int BT_ERR (char*) ;
 int DEFAULT_BAUD_RATE ;
 int ENODEV ;
 int ENOMEM ;
 int HCI_PCCARD ;
 int RECV_WAIT_PACKET_TYPE ;
 int SET_HCIDEV_DEV (struct hci_dev*,int *) ;
 int THIS_MODULE ;
 scalar_t__ UART_IER ;
 scalar_t__ UART_LCR ;
 int UART_LCR_WLEN8 ;
 scalar_t__ UART_MCR ;
 int UART_MCR_DTR ;
 int UART_MCR_OUT2 ;
 int UART_MCR_RTS ;
 int btuart_change_speed (TYPE_3__*,int ) ;
 int btuart_hci_close ;
 int btuart_hci_destruct ;
 int btuart_hci_flush ;
 int btuart_hci_ioctl ;
 int btuart_hci_open ;
 int btuart_hci_send_frame ;
 struct hci_dev* hci_alloc_dev () ;
 int hci_free_dev (struct hci_dev*) ;
 scalar_t__ hci_register_dev (struct hci_dev*) ;
 int msleep (int) ;
 int outb (int,scalar_t__) ;
 int skb_queue_head_init (int *) ;
 int spin_lock_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int btuart_open(btuart_info_t *info)
{
 unsigned long flags;
 unsigned int iobase = info->p_dev->io.BasePort1;
 struct hci_dev *hdev;

 spin_lock_init(&(info->lock));

 skb_queue_head_init(&(info->txq));

 info->rx_state = RECV_WAIT_PACKET_TYPE;
 info->rx_count = 0;
 info->rx_skb = ((void*)0);


 hdev = hci_alloc_dev();
 if (!hdev) {
  BT_ERR("Can't allocate HCI device");
  return -ENOMEM;
 }

 info->hdev = hdev;

 hdev->type = HCI_PCCARD;
 hdev->driver_data = info;
 SET_HCIDEV_DEV(hdev, &info->p_dev->dev);

 hdev->open = btuart_hci_open;
 hdev->close = btuart_hci_close;
 hdev->flush = btuart_hci_flush;
 hdev->send = btuart_hci_send_frame;
 hdev->destruct = btuart_hci_destruct;
 hdev->ioctl = btuart_hci_ioctl;

 hdev->owner = THIS_MODULE;

 spin_lock_irqsave(&(info->lock), flags);


 outb(0, iobase + UART_MCR);


 outb(0, iobase + UART_IER);


 outb(UART_LCR_WLEN8, iobase + UART_LCR);
 outb((UART_MCR_DTR | UART_MCR_RTS | UART_MCR_OUT2), iobase + UART_MCR);




 spin_unlock_irqrestore(&(info->lock), flags);

 btuart_change_speed(info, DEFAULT_BAUD_RATE);


 msleep(1000);


 if (hci_register_dev(hdev) < 0) {
  BT_ERR("Can't register HCI device");
  info->hdev = ((void*)0);
  hci_free_dev(hdev);
  return -ENODEV;
 }

 return 0;
}
