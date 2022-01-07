
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long DTLB_BASE ;
 char* HOW_TO_READ_TLB_CONTENT ;
 int MAX_TLBs ;
 scalar_t__ TLB_STEP ;
 int print_single_tlb (unsigned long,int ) ;
 int printk (char*) ;

void print_dtlb(void)
{
 int count;
 unsigned long tlb;

 printk(" ================= SH-5 D-TLBs Status ===================\n");
 printk(HOW_TO_READ_TLB_CONTENT);
 tlb = DTLB_BASE;
 for (count = 0; count < MAX_TLBs; count++, tlb += TLB_STEP)
  print_single_tlb(tlb, 0);
 printk
     (" =============================================================\n");
}
