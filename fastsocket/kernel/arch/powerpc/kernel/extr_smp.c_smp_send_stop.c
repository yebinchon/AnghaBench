
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int smp_call_function (int ,int *,int ) ;
 int stop_this_cpu ;

void smp_send_stop(void)
{
 smp_call_function(stop_this_cpu, ((void*)0), 0);
}
