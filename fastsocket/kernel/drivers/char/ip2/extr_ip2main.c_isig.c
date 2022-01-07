
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {int driver_data; TYPE_2__* ldisc; scalar_t__ pgrp; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* flush_buffer ) (struct tty_struct*) ;} ;


 int L_NOFLSH (struct tty_struct*) ;
 int i2InputFlush (int ) ;
 int kill_pgrp (scalar_t__,int,int) ;
 int stub1 (struct tty_struct*) ;

__attribute__((used)) static inline void isig(int sig, struct tty_struct *tty, int flush)
{

 if (tty->pgrp)
  kill_pgrp(tty->pgrp, sig, 1);
 if (flush || !L_NOFLSH(tty)) {
  if ( tty->ldisc->ops->flush_buffer )
   tty->ldisc->ops->flush_buffer(tty);
  i2InputFlush( tty->driver_data );
 }
}
