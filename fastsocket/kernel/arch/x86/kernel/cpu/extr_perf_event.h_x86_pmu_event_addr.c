
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int perfctr; } ;


 TYPE_1__ x86_pmu ;
 unsigned int x86_pmu_addr_offset (int) ;

__attribute__((used)) static inline unsigned int x86_pmu_event_addr(int index)
{
 return x86_pmu.perfctr + x86_pmu_addr_offset(index);
}
