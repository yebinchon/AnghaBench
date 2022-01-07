
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {struct moxa_port* driver_data; } ;
struct TYPE_2__ {int flags; } ;
struct moxa_port {TYPE_1__ port; } ;


 int ASYNC_INITIALIZED ;
 scalar_t__ C_HUPCL (struct tty_struct*) ;
 int MoxaPortDisable (struct moxa_port*) ;
 int MoxaPortLineCtrl (struct moxa_port*,int ,int ) ;
 int moxa_lock ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void moxa_shut_down(struct tty_struct *tty)
{
 struct moxa_port *ch = tty->driver_data;

 if (!(ch->port.flags & ASYNC_INITIALIZED))
  return;

 MoxaPortDisable(ch);




 if (C_HUPCL(tty))
  MoxaPortLineCtrl(ch, 0, 0);

 spin_lock_bh(&moxa_lock);
 ch->port.flags &= ~ASYNC_INITIALIZED;
 spin_unlock_bh(&moxa_lock);
}
