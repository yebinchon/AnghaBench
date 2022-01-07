
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct x25_asy {scalar_t__ magic; TYPE_2__* dev; struct tty_struct* tty; } ;
struct tty_struct {int receive_room; struct x25_asy* disc_data; TYPE_1__* ops; } ;
struct TYPE_4__ {int base_addr; int type; } ;
struct TYPE_3__ {int * write; } ;


 int ARPHRD_X25 ;
 int EEXIST ;
 int ENFILE ;
 int EOPNOTSUPP ;
 scalar_t__ X25_ASY_MAGIC ;
 int tty_driver_flush_buffer (struct tty_struct*) ;
 int tty_ldisc_flush (struct tty_struct*) ;
 struct x25_asy* x25_asy_alloc () ;
 int x25_asy_open (TYPE_2__*) ;

__attribute__((used)) static int x25_asy_open_tty(struct tty_struct *tty)
{
 struct x25_asy *sl = tty->disc_data;
 int err;

 if (tty->ops->write == ((void*)0))
  return -EOPNOTSUPP;


 if (sl && sl->magic == X25_ASY_MAGIC)
  return -EEXIST;


 sl = x25_asy_alloc();
 if (sl == ((void*)0))
  return -ENFILE;

 sl->tty = tty;
 tty->disc_data = sl;
 tty->receive_room = 65536;
 tty_driver_flush_buffer(tty);
 tty_ldisc_flush(tty);


 sl->dev->type = ARPHRD_X25;


 err = x25_asy_open(sl->dev);
 if (err)
  return err;

 return sl->dev->base_addr;
}
