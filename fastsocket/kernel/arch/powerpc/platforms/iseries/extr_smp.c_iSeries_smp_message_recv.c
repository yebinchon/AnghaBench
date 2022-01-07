
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * iSeries_smp_message ;
 int num_online_cpus () ;
 int smp_message_recv (int) ;
 int smp_processor_id () ;
 scalar_t__ test_and_clear_bit (int,int *) ;

void iSeries_smp_message_recv(void)
{
 int cpu = smp_processor_id();
 int msg;

 if (num_online_cpus() < 2)
  return;

 for (msg = 0; msg < 4; msg++)
  if (test_and_clear_bit(msg, &iSeries_smp_message[cpu]))
   smp_message_recv(msg);
}
