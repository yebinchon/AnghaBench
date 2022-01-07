
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int might_sleep () ;
 int msleep (unsigned int) ;
 scalar_t__ need_resched () ;
 unsigned int rtas_busy_delay_time (int) ;

unsigned int rtas_busy_delay(int status)
{
 unsigned int ms;

 might_sleep();
 ms = rtas_busy_delay_time(status);
 if (ms && need_resched())
  msleep(ms);

 return ms;
}
