
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_killed ;
 int wait_for_completion_timeout (int *,int) ;

int platform_cpu_kill(unsigned int cpu)
{
 return wait_for_completion_timeout(&cpu_killed, 5000);
}
