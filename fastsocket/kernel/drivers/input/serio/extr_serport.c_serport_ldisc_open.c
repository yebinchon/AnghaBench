
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int receive_room; int flags; struct serport* disc_data; } ;
struct serport {int wait; int lock; struct tty_struct* tty; } ;


 int CAP_SYS_ADMIN ;
 int ENOMEM ;
 int EPERM ;
 int GFP_KERNEL ;
 int TTY_DO_WRITE_WAKEUP ;
 int capable (int ) ;
 int init_waitqueue_head (int *) ;
 struct serport* kzalloc (int,int ) ;
 int set_bit (int ,int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int serport_ldisc_open(struct tty_struct *tty)
{
 struct serport *serport;

 if (!capable(CAP_SYS_ADMIN))
  return -EPERM;

 serport = kzalloc(sizeof(struct serport), GFP_KERNEL);
 if (!serport)
  return -ENOMEM;

 serport->tty = tty;
 spin_lock_init(&serport->lock);
 init_waitqueue_head(&serport->wait);

 tty->disc_data = serport;
 tty->receive_room = 256;
 set_bit(TTY_DO_WRITE_WAKEUP, &tty->flags);

 return 0;
}
