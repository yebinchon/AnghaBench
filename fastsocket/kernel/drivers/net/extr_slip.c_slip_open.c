
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tty_struct {int receive_room; struct slip* disc_data; TYPE_1__* ops; } ;
struct TYPE_8__ {void* expires; } ;
struct slip {scalar_t__ magic; int keepalive; int outfill; int flags; struct tty_struct* tty; TYPE_2__* dev; TYPE_4__ outfill_timer; TYPE_4__ keepalive_timer; int pid; int line; } ;
struct TYPE_7__ {int pid; } ;
struct TYPE_6__ {int base_addr; } ;
struct TYPE_5__ {int * write; } ;


 int CAP_NET_ADMIN ;
 int EEXIST ;
 int ENFILE ;
 int EOPNOTSUPP ;
 int EPERM ;
 int HZ ;
 int SLF_INUSE ;
 scalar_t__ SLIP_MAGIC ;
 int SL_MTU ;
 int add_timer (TYPE_4__*) ;
 int capable (int ) ;
 int clear_bit (int ,int *) ;
 TYPE_3__* current ;
 void* jiffies ;
 int register_netdevice (TYPE_2__*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int set_bit (int ,int *) ;
 struct slip* sl_alloc (int ) ;
 int sl_alloc_bufs (struct slip*,int ) ;
 int sl_free_bufs (struct slip*) ;
 int sl_sync () ;
 int test_bit (int ,int *) ;
 int tty_devnum (struct tty_struct*) ;

__attribute__((used)) static int slip_open(struct tty_struct *tty)
{
 struct slip *sl;
 int err;

 if (!capable(CAP_NET_ADMIN))
  return -EPERM;

 if (tty->ops->write == ((void*)0))
  return -EOPNOTSUPP;





 rtnl_lock();


 sl_sync();

 sl = tty->disc_data;

 err = -EEXIST;

 if (sl && sl->magic == SLIP_MAGIC)
  goto err_exit;


 err = -ENFILE;
 sl = sl_alloc(tty_devnum(tty));
 if (sl == ((void*)0))
  goto err_exit;

 sl->tty = tty;
 tty->disc_data = sl;
 sl->line = tty_devnum(tty);
 sl->pid = current->pid;

 if (!test_bit(SLF_INUSE, &sl->flags)) {

  err = sl_alloc_bufs(sl, SL_MTU);
  if (err)
   goto err_free_chan;

  set_bit(SLF_INUSE, &sl->flags);

  err = register_netdevice(sl->dev);
  if (err)
   goto err_free_bufs;
 }
 rtnl_unlock();
 tty->receive_room = 65536;
 return sl->dev->base_addr;

err_free_bufs:
 sl_free_bufs(sl);

err_free_chan:
 sl->tty = ((void*)0);
 tty->disc_data = ((void*)0);
 clear_bit(SLF_INUSE, &sl->flags);

err_exit:
 rtnl_unlock();


 return err;
}
