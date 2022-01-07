
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct debug_store {int dummy; } ;
struct TYPE_2__ {struct debug_store* ds; } ;


 int MSR_IA32_DS_AREA ;
 int cpu_hw_events ;
 TYPE_1__ per_cpu (int ,int) ;
 int wrmsr_on_cpu (int,int ,int ,int ) ;

void init_debug_store_on_cpu(int cpu)
{
 struct debug_store *ds = per_cpu(cpu_hw_events, cpu).ds;

 if (!ds)
  return;

 wrmsr_on_cpu(cpu, MSR_IA32_DS_AREA,
       (u32)((u64)(unsigned long)ds),
       (u32)((u64)(unsigned long)ds >> 32));
}
