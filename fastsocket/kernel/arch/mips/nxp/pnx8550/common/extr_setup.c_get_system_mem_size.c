
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PCI_BASE ;
 unsigned long inl (int) ;

unsigned long get_system_mem_size(void)
{

 unsigned long dram_r0_lo = inl(PCI_BASE | 0x65010);

 unsigned long dram_r1_hi = inl(PCI_BASE | 0x65018);

 return dram_r1_hi - dram_r0_lo + 1;
}
