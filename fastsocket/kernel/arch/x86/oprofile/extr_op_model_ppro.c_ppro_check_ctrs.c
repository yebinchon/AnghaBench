
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long long u64 ;
struct pt_regs {int dummy; } ;
struct op_msrs {TYPE_1__* counters; } ;
struct TYPE_2__ {int addr; } ;


 int APIC_LVTPC ;
 int APIC_LVT_MASKED ;
 int apic_read (int ) ;
 int apic_write (int ,int) ;
 int counter_width ;
 int num_counters ;
 int oprofile_add_sample (struct pt_regs* const,int) ;
 int rdmsrl (int ,unsigned long long) ;
 int * reset_value ;
 scalar_t__ unlikely (int) ;
 int wrmsrl (int ,int ) ;

__attribute__((used)) static int ppro_check_ctrs(struct pt_regs * const regs,
      struct op_msrs const * const msrs)
{
 u64 val;
 int i;





 if (unlikely(!reset_value))
  goto out;

 for (i = 0; i < num_counters; ++i) {
  if (!reset_value[i])
   continue;
  rdmsrl(msrs->counters[i].addr, val);
  if (val & (1ULL << (counter_width - 1)))
   continue;
  oprofile_add_sample(regs, i);
  wrmsrl(msrs->counters[i].addr, -reset_value[i]);
 }

out:


 apic_write(APIC_LVTPC, apic_read(APIC_LVTPC) & ~APIC_LVT_MASKED);
 return 1;
}
