
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tty_struct {TYPE_3__* ops; int driver; } ;
struct TYPE_5__ {TYPE_1__* ser; } ;
struct cardstate {TYPE_2__ hw; } ;
struct TYPE_6__ {int (* tiocmset ) (struct tty_struct*,int *,unsigned int,unsigned int) ;} ;
struct TYPE_4__ {struct tty_struct* tty; } ;


 int DEBUG_IF ;
 int EINVAL ;
 int gig_dbg (int ,char*,unsigned int,unsigned int) ;
 int stub1 (struct tty_struct*,int *,unsigned int,unsigned int) ;

__attribute__((used)) static int gigaset_set_modem_ctrl(struct cardstate *cs, unsigned old_state, unsigned new_state)
{
 struct tty_struct *tty = cs->hw.ser->tty;
 unsigned int set, clear;

 if (!tty || !tty->driver || !tty->ops->tiocmset)
  return -EINVAL;
 set = new_state & ~old_state;
 clear = old_state & ~new_state;
 if (!set && !clear)
  return 0;
 gig_dbg(DEBUG_IF, "tiocmset set %x clear %x", set, clear);
 return tty->ops->tiocmset(tty, ((void*)0), set, clear);
}
