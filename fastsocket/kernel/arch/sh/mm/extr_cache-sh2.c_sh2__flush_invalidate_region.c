
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long CACHE_OC_ADDRESS_ARRAY ;
 unsigned long CACHE_PHYSADDR_MASK ;
 unsigned long CCR ;
 unsigned long CCR_CACHE_INVALIDATE ;
 int L1_CACHE_BYTES ;
 int back_to_cached () ;
 unsigned long ctrl_inl (unsigned long) ;
 int ctrl_outl (unsigned long,unsigned long) ;
 int jump_to_uncached () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static void sh2__flush_invalidate_region(void *start, int size)
{
 unsigned long v;
 unsigned long begin, end;

 begin = (unsigned long)start & ~(L1_CACHE_BYTES-1);
 end = ((unsigned long)start + size + L1_CACHE_BYTES-1)
  & ~(L1_CACHE_BYTES-1);

 for (v = begin; v < end; v+=L1_CACHE_BYTES)
  ctrl_outl((v & CACHE_PHYSADDR_MASK),
     CACHE_OC_ADDRESS_ARRAY | (v & 0x00000ff0) | 0x00000008);

}
