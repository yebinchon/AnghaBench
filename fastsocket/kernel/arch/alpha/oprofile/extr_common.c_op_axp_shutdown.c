
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int perf_irq ;
 int save_perf_irq ;

__attribute__((used)) static void
op_axp_shutdown(void)
{

 perf_irq = save_perf_irq;
}
