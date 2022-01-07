
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct pt_regs {int dummy; } ;
struct op_msrs {int dummy; } ;
struct TYPE_2__ {int counter_address; int cccr_address; } ;


 int APIC_LVTPC ;
 int APIC_LVT_MASKED ;
 int CCCR_CLEAR_OVF (unsigned long) ;
 scalar_t__ CCCR_OVF_P (unsigned long) ;
 unsigned long OP_CTR_OVERFLOW ;
 unsigned long VIRT_CTR (unsigned long,int) ;
 int apic_read (int ) ;
 int apic_write (int ,int) ;
 unsigned long get_stagger () ;
 int num_counters ;
 int oprofile_add_sample (struct pt_regs* const,int) ;
 TYPE_1__* p4_counters ;
 int rdmsr (int ,unsigned long,unsigned long) ;
 scalar_t__* reset_value ;
 int wrmsr (int ,unsigned long,unsigned long) ;
 int wrmsrl (int ,int ) ;

__attribute__((used)) static int p4_check_ctrs(struct pt_regs * const regs,
    struct op_msrs const * const msrs)
{
 unsigned long ctr, low, high, stag, real;
 int i;

 stag = get_stagger();

 for (i = 0; i < num_counters; ++i) {

  if (!reset_value[i])
   continue;
  real = VIRT_CTR(stag, i);

  rdmsr(p4_counters[real].cccr_address, low, high);
  rdmsr(p4_counters[real].counter_address, ctr, high);
  if (CCCR_OVF_P(low) || !(ctr & OP_CTR_OVERFLOW)) {
   oprofile_add_sample(regs, i);
   wrmsrl(p4_counters[real].counter_address,
          -(u64)reset_value[i]);
   CCCR_CLEAR_OVF(low);
   wrmsr(p4_counters[real].cccr_address, low, high);
   wrmsrl(p4_counters[real].counter_address,
          -(u64)reset_value[i]);
  }
 }


 apic_write(APIC_LVTPC, apic_read(APIC_LVTPC) & ~APIC_LVT_MASKED);


 return 1;
}
