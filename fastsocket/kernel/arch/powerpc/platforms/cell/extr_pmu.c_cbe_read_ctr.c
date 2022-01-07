
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int NR_PHYS_CTRS ;
 int cbe_get_ctr_size (int,int) ;
 int cbe_read_phys_ctr (int,int) ;

u32 cbe_read_ctr(u32 cpu, u32 ctr)
{
 u32 val;
 u32 phys_ctr = ctr & (NR_PHYS_CTRS - 1);

 val = cbe_read_phys_ctr(cpu, phys_ctr);

 if (cbe_get_ctr_size(cpu, phys_ctr) == 16)
  val = (ctr < NR_PHYS_CTRS) ? (val >> 16) : (val & 0xffff);

 return val;
}
