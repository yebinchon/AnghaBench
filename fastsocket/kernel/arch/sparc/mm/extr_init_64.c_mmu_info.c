
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int atomic_read (int *) ;
 scalar_t__ cheetah ;
 scalar_t__ cheetah_plus ;
 int dcpage_flushes ;
 int dcpage_flushes_xcall ;
 scalar_t__ hypervisor ;
 int seq_printf (struct seq_file*,char*,...) ;
 scalar_t__ spitfire ;
 scalar_t__ tlb_type ;

void mmu_info(struct seq_file *m)
{
 if (tlb_type == cheetah)
  seq_printf(m, "MMU Type\t: Cheetah\n");
 else if (tlb_type == cheetah_plus)
  seq_printf(m, "MMU Type\t: Cheetah+\n");
 else if (tlb_type == spitfire)
  seq_printf(m, "MMU Type\t: Spitfire\n");
 else if (tlb_type == hypervisor)
  seq_printf(m, "MMU Type\t: Hypervisor (sun4v)\n");
 else
  seq_printf(m, "MMU Type\t: ???\n");
}
