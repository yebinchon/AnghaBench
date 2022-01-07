
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct debug_store {scalar_t__ pebs_buffer_base; scalar_t__ pebs_interrupt_threshold; scalar_t__ pebs_absolute_maximum; scalar_t__ pebs_index; } ;
struct TYPE_4__ {struct debug_store* ds; } ;
struct TYPE_3__ {int pebs_record_size; int pebs; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PEBS_BUFFER_SIZE ;
 int __GFP_ZERO ;
 int cpu_hw_events ;
 int cpu_to_node (int) ;
 void* kmalloc_node (int,int,int) ;
 TYPE_2__ per_cpu (int ,int) ;
 scalar_t__ unlikely (int) ;
 TYPE_1__ x86_pmu ;

__attribute__((used)) static int alloc_pebs_buffer(int cpu)
{
 struct debug_store *ds = per_cpu(cpu_hw_events, cpu).ds;
 int node = cpu_to_node(cpu);
 int max, thresh = 1;
 void *buffer;

 if (!x86_pmu.pebs)
  return 0;

 buffer = kmalloc_node(PEBS_BUFFER_SIZE, GFP_KERNEL | __GFP_ZERO, node);
 if (unlikely(!buffer))
  return -ENOMEM;

 max = PEBS_BUFFER_SIZE / x86_pmu.pebs_record_size;

 ds->pebs_buffer_base = (u64)(unsigned long)buffer;
 ds->pebs_index = ds->pebs_buffer_base;
 ds->pebs_absolute_maximum = ds->pebs_buffer_base +
  max * x86_pmu.pebs_record_size;

 ds->pebs_interrupt_threshold = ds->pebs_buffer_base +
  thresh * x86_pmu.pebs_record_size;

 return 0;
}
