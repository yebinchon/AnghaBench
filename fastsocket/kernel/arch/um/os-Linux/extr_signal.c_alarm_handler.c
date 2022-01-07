
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigcontext {int dummy; } ;


 int SIGVTALRM_MASK ;
 int block_signals () ;
 int real_alarm_handler (struct sigcontext*) ;
 int set_signals (int) ;
 int signals_enabled ;
 int signals_pending ;

void alarm_handler(int sig, struct sigcontext *sc)
{
 int enabled;

 enabled = signals_enabled;
 if (!signals_enabled) {
  signals_pending |= SIGVTALRM_MASK;
  return;
 }

 block_signals();

 real_alarm_handler(sc);
 set_signals(enabled);
}
