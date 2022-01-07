
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_NUMNODES ;
 int VMCOREINFO_LENGTH (int ,int ) ;
 int VMCOREINFO_SYMBOL (int ) ;
 int init_level4_pgt ;
 int node_data ;
 int phys_base ;

void arch_crash_save_vmcoreinfo(void)
{
 VMCOREINFO_SYMBOL(phys_base);
 VMCOREINFO_SYMBOL(init_level4_pgt);





}
