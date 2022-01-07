
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct slip* disc_data; } ;
struct slip {scalar_t__ magic; int dev; int outfill_timer; int keepalive_timer; scalar_t__ line; int leased; struct tty_struct* tty; } ;


 scalar_t__ SLIP_MAGIC ;
 int del_timer_sync (int *) ;
 int unregister_netdev (int ) ;

__attribute__((used)) static void slip_close(struct tty_struct *tty)
{
 struct slip *sl = tty->disc_data;


 if (!sl || sl->magic != SLIP_MAGIC || sl->tty != tty)
  return;

 tty->disc_data = ((void*)0);
 sl->tty = ((void*)0);
 if (!sl->leased)
  sl->line = 0;







 unregister_netdev(sl->dev);

}
