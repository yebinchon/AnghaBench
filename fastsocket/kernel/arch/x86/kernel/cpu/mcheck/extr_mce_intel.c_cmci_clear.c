
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int MCI_CTL2_CMCI_EN ;
 int MCI_CTL2_CMCI_THRESHOLD_MASK ;
 int MSR_IA32_MCx_CTL2 (int) ;
 int __clear_bit (int,int ) ;
 int __get_cpu_var (int ) ;
 int cmci_discover_lock ;
 int cmci_supported (int*) ;
 int mce_banks_owned ;
 int rdmsrl (int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (int,int ) ;
 int wrmsrl (int ,int) ;

void cmci_clear(void)
{
 unsigned long flags;
 int i;
 int banks;
 u64 val;

 if (!cmci_supported(&banks))
  return;
 spin_lock_irqsave(&cmci_discover_lock, flags);
 for (i = 0; i < banks; i++) {
  if (!test_bit(i, __get_cpu_var(mce_banks_owned)))
   continue;

  rdmsrl(MSR_IA32_MCx_CTL2(i), val);
  val &= ~(MCI_CTL2_CMCI_EN|MCI_CTL2_CMCI_THRESHOLD_MASK);
  wrmsrl(MSR_IA32_MCx_CTL2(i), val);
  __clear_bit(i, __get_cpu_var(mce_banks_owned));
 }
 spin_unlock_irqrestore(&cmci_discover_lock, flags);
}
