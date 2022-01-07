
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigcontext {int dummy; } ;


 int SIGIO ;
 int SIGIO_MASK ;
 int block_signals () ;
 int set_signals (int) ;
 int sig_handler_common (int,struct sigcontext*) ;
 int signals_enabled ;
 int signals_pending ;

void sig_handler(int sig, struct sigcontext *sc)
{
 int enabled;

 enabled = signals_enabled;
 if (!enabled && (sig == SIGIO)) {
  signals_pending |= SIGIO_MASK;
  return;
 }

 block_signals();

 sig_handler_common(sig, sc);

 set_signals(enabled);
}
