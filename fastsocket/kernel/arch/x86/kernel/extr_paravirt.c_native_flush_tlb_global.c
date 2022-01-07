
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __native_flush_tlb_global () ;

__attribute__((used)) static void native_flush_tlb_global(void)
{
 __native_flush_tlb_global();
}
