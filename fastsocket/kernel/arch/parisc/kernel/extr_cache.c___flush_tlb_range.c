
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 int PAGE_SIZE ;
 int flush_tlb_all () ;
 int mtsp (unsigned long,int) ;
 int pdtlb (unsigned long) ;
 int pitlb (unsigned long) ;
 int purge_tlb_end (unsigned long) ;
 int purge_tlb_start (unsigned long) ;
 scalar_t__ split_tlb ;

void __flush_tlb_range(unsigned long sid, unsigned long start,
         unsigned long end)
{
 unsigned long npages;

 npages = ((end - (start & PAGE_MASK)) + (PAGE_SIZE - 1)) >> PAGE_SHIFT;
 if (npages >= 512)
  flush_tlb_all();
 else {
  unsigned long flags;

  mtsp(sid, 1);
  purge_tlb_start(flags);
  if (split_tlb) {
   while (npages--) {
    pdtlb(start);
    pitlb(start);
    start += PAGE_SIZE;
   }
  } else {
   while (npages--) {
    pdtlb(start);
    start += PAGE_SIZE;
   }
  }
  purge_tlb_end(flags);
 }
}
