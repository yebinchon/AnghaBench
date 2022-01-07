
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __tlb_flush_local () ;

__attribute__((used)) static void smp_ptlb_callback(void *info)
{
 __tlb_flush_local();
}
