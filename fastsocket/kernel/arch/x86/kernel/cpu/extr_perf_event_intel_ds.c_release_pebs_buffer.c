
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct debug_store {scalar_t__ pebs_buffer_base; } ;
struct TYPE_4__ {struct debug_store* ds; } ;
struct TYPE_3__ {int pebs; } ;


 int cpu_hw_events ;
 int kfree (void*) ;
 TYPE_2__ per_cpu (int ,int) ;
 TYPE_1__ x86_pmu ;

__attribute__((used)) static void release_pebs_buffer(int cpu)
{
 struct debug_store *ds = per_cpu(cpu_hw_events, cpu).ds;

 if (!ds || !x86_pmu.pebs)
  return;

 kfree((void *)(unsigned long)ds->pebs_buffer_base);
 ds->pebs_buffer_base = 0;
}
