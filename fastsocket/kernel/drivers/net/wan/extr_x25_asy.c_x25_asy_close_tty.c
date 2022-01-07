
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct x25_asy {scalar_t__ magic; int * tty; TYPE_1__* dev; } ;
struct tty_struct {struct x25_asy* disc_data; } ;
struct TYPE_2__ {int flags; } ;


 int IFF_UP ;
 scalar_t__ X25_ASY_MAGIC ;
 int dev_close (TYPE_1__*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int x25_asy_free (struct x25_asy*) ;

__attribute__((used)) static void x25_asy_close_tty(struct tty_struct *tty)
{
 struct x25_asy *sl = tty->disc_data;


 if (!sl || sl->magic != X25_ASY_MAGIC)
  return;

 rtnl_lock();
 if (sl->dev->flags & IFF_UP)
  dev_close(sl->dev);
 rtnl_unlock();

 tty->disc_data = ((void*)0);
 sl->tty = ((void*)0);
 x25_asy_free(sl);
}
