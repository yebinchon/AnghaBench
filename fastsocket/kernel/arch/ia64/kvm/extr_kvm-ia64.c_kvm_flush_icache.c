
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ia64_fc (void*) ;
 int ia64_srlz_i () ;
 int ia64_sync_i () ;

__attribute__((used)) static void kvm_flush_icache(unsigned long start, unsigned long len)
{
 int l;

 for (l = 0; l < (len + 32); l += 32)
  ia64_fc((void *)(start + l));

 ia64_sync_i();
 ia64_srlz_i();
}
