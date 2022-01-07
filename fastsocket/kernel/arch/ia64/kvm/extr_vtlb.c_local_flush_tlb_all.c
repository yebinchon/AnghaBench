
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long ptce_base; unsigned long* ptce_count; unsigned long* ptce_stride; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;


 TYPE_2__* current_vcpu ;
 int ia64_ptce (unsigned long) ;
 int ia64_srlz_i () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

void local_flush_tlb_all(void)
{
 int i, j;
 unsigned long flags, count0, count1;
 unsigned long stride0, stride1, addr;

 addr = current_vcpu->arch.ptce_base;
 count0 = current_vcpu->arch.ptce_count[0];
 count1 = current_vcpu->arch.ptce_count[1];
 stride0 = current_vcpu->arch.ptce_stride[0];
 stride1 = current_vcpu->arch.ptce_stride[1];

 local_irq_save(flags);
 for (i = 0; i < count0; ++i) {
  for (j = 0; j < count1; ++j) {
   ia64_ptce(addr);
   addr += stride1;
  }
  addr += stride0;
 }
 local_irq_restore(flags);
 ia64_srlz_i();
}
