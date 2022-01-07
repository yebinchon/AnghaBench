
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int discard_lazy_cpu_state () ;

void exit_thread(void)
{
 discard_lazy_cpu_state();
}
