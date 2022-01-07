
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mm; } ;


 TYPE_1__* current ;
 int flush_tlb_mm (int ) ;

void flush_tlb_all(void)
{
 flush_tlb_mm(current->mm);
}
