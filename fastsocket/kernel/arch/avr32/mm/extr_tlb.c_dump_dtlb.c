
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int NR_TLB_ENTRIES ;
 int printk (char*) ;
 int show_dtlb_entry (unsigned int) ;

void dump_dtlb(void)
{
 unsigned int i;

 printk("ID  V G ASID VPN   PFN   AP SZ C B W D\n");
 for (i = 0; i < NR_TLB_ENTRIES; i++)
  show_dtlb_entry(i);
}
