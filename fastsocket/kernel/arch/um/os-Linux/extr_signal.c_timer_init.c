
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __sighandler_t ;


 int SA_ONSTACK ;
 int SA_RESTART ;
 int SIGIO ;
 int SIGUSR1 ;
 int SIGVTALRM ;
 int SIGWINCH ;
 scalar_t__ alarm_handler ;
 int set_handler (int ,int ,int,int ,int ,int ,int) ;

void timer_init(void)
{
 set_handler(SIGVTALRM, (__sighandler_t) alarm_handler,
      SA_ONSTACK | SA_RESTART, SIGUSR1, SIGIO, SIGWINCH, -1);
}
