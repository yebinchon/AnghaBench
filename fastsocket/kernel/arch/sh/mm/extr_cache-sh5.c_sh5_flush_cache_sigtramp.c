
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long L1_CACHE_BYTES ;
 int __flush_wback_region (void*,unsigned long) ;
 int sh64_icache_inv_current_user_range (unsigned long,unsigned long) ;
 int wmb () ;

__attribute__((used)) static void sh5_flush_cache_sigtramp(void *vaddr)
{
 unsigned long end = (unsigned long)vaddr + L1_CACHE_BYTES;

 __flush_wback_region(vaddr, L1_CACHE_BYTES);
 wmb();
 sh64_icache_inv_current_user_range((unsigned long)vaddr, end);
}
