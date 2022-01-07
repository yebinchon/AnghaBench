
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_3__ {int tv_sec; scalar_t__ tv_usec; } ;
struct itimerval {TYPE_2__ it_value; TYPE_1__ it_interval; } ;


 int ITIMER_REAL ;
 int exit_cleanup () ;
 int perror (char*) ;
 scalar_t__ setitimer (int ,struct itimerval*,int *) ;

void init_timer(void)
{
 struct itimerval interval;

 interval.it_interval.tv_sec = 1;
 interval.it_interval.tv_usec = 0;
 interval.it_value.tv_sec = 1;
 interval.it_value.tv_usec = 0;

 if(setitimer(ITIMER_REAL, &interval, ((void*)0)) != 0) {
  perror("Unable to set interval timer");
  exit_cleanup();
 }
}
