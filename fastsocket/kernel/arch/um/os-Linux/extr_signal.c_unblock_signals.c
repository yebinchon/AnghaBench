
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGIO ;
 int SIGIO_MASK ;
 int SIGVTALRM_MASK ;
 int barrier () ;
 int real_alarm_handler (int *) ;
 int sig_handler_common (int ,int *) ;
 int signals_enabled ;
 int signals_pending ;

void unblock_signals(void)
{
 int save_pending;

 if (signals_enabled == 1)
  return;






 while (1) {




  signals_enabled = 1;





  barrier();

  save_pending = signals_pending;
  if (save_pending == 0)
   return;

  signals_pending = 0;







  signals_enabled = 0;






  if (save_pending & SIGIO_MASK)
   sig_handler_common(SIGIO, ((void*)0));

  if (save_pending & SIGVTALRM_MASK)
   real_alarm_handler(((void*)0));
 }
}
