
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {scalar_t__ pgrp; } ;


 int L_NOFLSH (struct tty_struct*) ;
 int kill_pgrp (scalar_t__,int,int) ;
 int n_tty_flush_buffer (struct tty_struct*) ;
 int tty_driver_flush_buffer (struct tty_struct*) ;

__attribute__((used)) static inline void isig(int sig, struct tty_struct *tty, int flush)
{
 if (tty->pgrp)
  kill_pgrp(tty->pgrp, sig, 1);
 if (flush || !L_NOFLSH(tty)) {
  n_tty_flush_buffer(tty);
  tty_driver_flush_buffer(tty);
 }
}
