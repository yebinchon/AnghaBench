
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ec_schedule ;
 int smp_ext_bitcall (int,int ) ;

void smp_send_reschedule(int cpu)
{
 smp_ext_bitcall(cpu, ec_schedule);
}
