
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __native_flush_tlb_single (unsigned long) ;

__attribute__((used)) static void native_flush_tlb_single(unsigned long addr)
{
 __native_flush_tlb_single(addr);
}
