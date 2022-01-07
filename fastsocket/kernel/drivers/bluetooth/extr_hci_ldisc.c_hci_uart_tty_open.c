
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tty_struct {int receive_room; TYPE_3__* ldisc; struct hci_uart* disc_data; TYPE_1__* ops; } ;
struct hci_uart {int rx_lock; struct tty_struct* tty; } ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {int (* flush_buffer ) (struct tty_struct*) ;} ;
struct TYPE_4__ {int * write; } ;


 int BT_DBG (char*,struct tty_struct*) ;
 int BT_ERR (char*) ;
 int EEXIST ;
 int ENFILE ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 struct hci_uart* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;
 int stub1 (struct tty_struct*) ;
 int tty_driver_flush_buffer (struct tty_struct*) ;

__attribute__((used)) static int hci_uart_tty_open(struct tty_struct *tty)
{
 struct hci_uart *hu = (void *) tty->disc_data;

 BT_DBG("tty %p", tty);



 if (hu)
  return -EEXIST;



 if (tty->ops->write == ((void*)0))
  return -EOPNOTSUPP;

 if (!(hu = kzalloc(sizeof(struct hci_uart), GFP_KERNEL))) {
  BT_ERR("Can't allocate control structure");
  return -ENFILE;
 }

 tty->disc_data = hu;
 hu->tty = tty;
 tty->receive_room = 65536;

 spin_lock_init(&hu->rx_lock);






 if (tty->ldisc->ops->flush_buffer)
  tty->ldisc->ops->flush_buffer(tty);
 tty_driver_flush_buffer(tty);

 return 0;
}
