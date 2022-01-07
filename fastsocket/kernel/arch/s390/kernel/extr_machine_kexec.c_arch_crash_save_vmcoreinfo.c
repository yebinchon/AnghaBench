
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NR_CPUS ;
 int VMCOREINFO_LENGTH (int ,int ) ;
 int VMCOREINFO_SYMBOL (int ) ;
 int high_memory ;
 int lowcore_ptr ;

void arch_crash_save_vmcoreinfo(void)
{
 VMCOREINFO_SYMBOL(lowcore_ptr);
 VMCOREINFO_SYMBOL(high_memory);
 VMCOREINFO_LENGTH(lowcore_ptr, NR_CPUS);
}
