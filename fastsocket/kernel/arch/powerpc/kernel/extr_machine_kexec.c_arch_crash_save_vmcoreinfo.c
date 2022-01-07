
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_NUMNODES ;
 int VMCOREINFO_LENGTH (int ,int ) ;
 int VMCOREINFO_SYMBOL (int ) ;
 int contig_page_data ;
 int node_data ;

void arch_crash_save_vmcoreinfo(void)
{






 VMCOREINFO_SYMBOL(contig_page_data);

}
