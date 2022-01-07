
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __flush_tlb_all () ;

__attribute__((used)) static void flush_tlb_all_ipi(void *info)
{
 __flush_tlb_all();
}
