
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flush_tlb_data {unsigned long addr1; unsigned long addr2; } ;


 int flush_tlb_one_ipi ;
 int local_flush_tlb_one (unsigned long,unsigned long) ;
 int smp_call_function (int ,void*,int) ;

void flush_tlb_one(unsigned long asid, unsigned long vaddr)
{
 struct flush_tlb_data fd;

 fd.addr1 = asid;
 fd.addr2 = vaddr;

 smp_call_function(flush_tlb_one_ipi, (void *)&fd, 1);
 local_flush_tlb_one(asid, vaddr);
}
