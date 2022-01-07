
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tlbsize; } ;


 TYPE_1__ current_cpu_data ;
 int dump_tlb (int ,scalar_t__) ;

void dump_tlb_all(void)
{
 dump_tlb(0, current_cpu_data.tlbsize - 1);
}
