
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int smpfunc_t ;
typedef int cpumask_t ;
struct TYPE_2__ {unsigned long arg1; unsigned long arg2; unsigned long arg3; unsigned long arg4; int* processors_in; int* processors_out; scalar_t__ arg5; int func; } ;


 int IRQ_CROSS_CALL ;
 int SUN4M_NCPUS ;
 int barrier () ;
 TYPE_1__ ccall_info ;
 int cpu_clear (int ,int ) ;
 scalar_t__ cpu_isset (int,int ) ;
 int cpu_online_map ;
 int cpus_and (int ,int ,int ) ;
 int cross_call_lock ;
 int set_cpu_int (int,int ) ;
 int smp_processor_id () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void smp4m_cross_call(smpfunc_t func, cpumask_t mask, unsigned long arg1,
        unsigned long arg2, unsigned long arg3,
        unsigned long arg4)
{
  register int ncpus = SUN4M_NCPUS;
  unsigned long flags;

  spin_lock_irqsave(&cross_call_lock, flags);


  ccall_info.func = func;
  ccall_info.arg1 = arg1;
  ccall_info.arg2 = arg2;
  ccall_info.arg3 = arg3;
  ccall_info.arg4 = arg4;
  ccall_info.arg5 = 0;


  {
   register int i;

   cpu_clear(smp_processor_id(), mask);
   cpus_and(mask, cpu_online_map, mask);
   for(i = 0; i < ncpus; i++) {
    if (cpu_isset(i, mask)) {
     ccall_info.processors_in[i] = 0;
     ccall_info.processors_out[i] = 0;
     set_cpu_int(i, IRQ_CROSS_CALL);
    } else {
     ccall_info.processors_in[i] = 1;
     ccall_info.processors_out[i] = 1;
    }
   }
  }

  {
   register int i;

   i = 0;
   do {
    if (!cpu_isset(i, mask))
     continue;
    while(!ccall_info.processors_in[i])
     barrier();
   } while(++i < ncpus);

   i = 0;
   do {
    if (!cpu_isset(i, mask))
     continue;
    while(!ccall_info.processors_out[i])
     barrier();
   } while(++i < ncpus);
  }

  spin_unlock_irqrestore(&cross_call_lock, flags);
}
