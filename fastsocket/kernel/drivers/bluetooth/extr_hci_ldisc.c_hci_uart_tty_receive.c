
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct tty_struct {scalar_t__ disc_data; } ;
struct hci_uart {int rx_lock; TYPE_3__* hdev; TYPE_1__* proto; int flags; struct tty_struct* tty; } ;
struct TYPE_5__ {int byte_rx; } ;
struct TYPE_6__ {TYPE_2__ stat; } ;
struct TYPE_4__ {int (* recv ) (struct hci_uart*,void*,int) ;} ;


 int HCI_UART_PROTO_SET ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct hci_uart*,void*,int) ;
 int test_bit (int ,int *) ;
 int tty_unthrottle (struct tty_struct*) ;

__attribute__((used)) static void hci_uart_tty_receive(struct tty_struct *tty, const u8 *data, char *flags, int count)
{
 struct hci_uart *hu = (void *)tty->disc_data;

 if (!hu || tty != hu->tty)
  return;

 if (!test_bit(HCI_UART_PROTO_SET, &hu->flags))
  return;

 spin_lock(&hu->rx_lock);
 hu->proto->recv(hu, (void *) data, count);
 hu->hdev->stat.byte_rx += count;
 spin_unlock(&hu->rx_lock);

 tty_unthrottle(tty);
}
