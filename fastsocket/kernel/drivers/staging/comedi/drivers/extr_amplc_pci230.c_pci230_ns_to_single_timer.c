
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int pci230_choose_clk_count (unsigned int,unsigned int*,unsigned int) ;
 unsigned int* pci230_timebase ;

__attribute__((used)) static void pci230_ns_to_single_timer(unsigned int *ns, unsigned int round)
{
 unsigned int count;
 unsigned int clk_src;

 clk_src = pci230_choose_clk_count(*ns, &count, round);
 *ns = count * pci230_timebase[clk_src];
 return;
}
