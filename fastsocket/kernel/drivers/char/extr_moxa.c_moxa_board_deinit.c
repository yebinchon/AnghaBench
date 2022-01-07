
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct moxa_board_conf {unsigned int numPorts; TYPE_2__* ports; int * basemem; scalar_t__ ready; } ;
struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ port; } ;


 int ASYNC_INITIALIZED ;
 int iounmap (int *) ;
 int kfree (TYPE_2__*) ;
 int moxa_lock ;
 int moxa_openlock ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tty_hangup (struct tty_struct*) ;
 int tty_kref_put (struct tty_struct*) ;
 struct tty_struct* tty_port_tty_get (TYPE_1__*) ;

__attribute__((used)) static void moxa_board_deinit(struct moxa_board_conf *brd)
{
 unsigned int a, opened;

 mutex_lock(&moxa_openlock);
 spin_lock_bh(&moxa_lock);
 brd->ready = 0;
 spin_unlock_bh(&moxa_lock);


 for (a = 0; a < brd->numPorts; a++)
  if (brd->ports[a].port.flags & ASYNC_INITIALIZED) {
   struct tty_struct *tty = tty_port_tty_get(
      &brd->ports[a].port);
   if (tty) {
    tty_hangup(tty);
    tty_kref_put(tty);
   }
  }
 while (1) {
  opened = 0;
  for (a = 0; a < brd->numPorts; a++)
   if (brd->ports[a].port.flags & ASYNC_INITIALIZED)
    opened++;
  mutex_unlock(&moxa_openlock);
  if (!opened)
   break;
  msleep(50);
  mutex_lock(&moxa_openlock);
 }

 iounmap(brd->basemem);
 brd->basemem = ((void*)0);
 kfree(brd->ports);
}
