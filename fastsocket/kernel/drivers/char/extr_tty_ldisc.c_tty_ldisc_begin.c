
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int N_TTY ;
 int tty_ldisc_N_TTY ;
 int tty_register_ldisc (int ,int *) ;

void tty_ldisc_begin(void)
{

 (void) tty_register_ldisc(N_TTY, &tty_ldisc_N_TTY);
}
