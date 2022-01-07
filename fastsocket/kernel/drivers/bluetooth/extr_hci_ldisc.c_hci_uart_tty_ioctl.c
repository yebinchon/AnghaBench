
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {scalar_t__ disc_data; } ;
struct hci_uart {TYPE_2__* hdev; int flags; TYPE_1__* proto; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int id; } ;
struct TYPE_3__ {int id; } ;


 int BT_DBG (char*) ;
 int EBADF ;
 int EBUSY ;
 int EUNATCH ;



 int HCI_UART_PROTO_SET ;
 int clear_bit (int ,int *) ;
 int hci_uart_set_proto (struct hci_uart*,unsigned long) ;
 int n_tty_ioctl_helper (struct tty_struct*,struct file*,unsigned int,unsigned long) ;
 int test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int hci_uart_tty_ioctl(struct tty_struct *tty, struct file * file,
     unsigned int cmd, unsigned long arg)
{
 struct hci_uart *hu = (void *)tty->disc_data;
 int err = 0;

 BT_DBG("");


 if (!hu)
  return -EBADF;

 switch (cmd) {
 case 128:
  if (!test_and_set_bit(HCI_UART_PROTO_SET, &hu->flags)) {
   err = hci_uart_set_proto(hu, arg);
   if (err) {
    clear_bit(HCI_UART_PROTO_SET, &hu->flags);
    return err;
   }
  } else
   return -EBUSY;
  break;

 case 129:
  if (test_bit(HCI_UART_PROTO_SET, &hu->flags))
   return hu->proto->id;
  return -EUNATCH;

 case 130:
  if (test_bit(HCI_UART_PROTO_SET, &hu->flags))
   return hu->hdev->id;
  return -EUNATCH;

 default:
  err = n_tty_ioctl_helper(tty, file, cmd, arg);
  break;
 };

 return err;
}
