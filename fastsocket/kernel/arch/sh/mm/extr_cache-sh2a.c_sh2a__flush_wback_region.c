
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long CACHE_OC_ADDRESS_ARRAY ;
 unsigned long CACHE_PHYSADDR_MASK ;
 int L1_CACHE_BYTES ;
 unsigned long SH_CACHE_UPDATED ;
 int back_to_cached () ;
 unsigned long ctrl_inl (unsigned long) ;
 int ctrl_outl (unsigned long,unsigned long) ;
 int jump_to_uncached () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static void sh2a__flush_wback_region(void *start, int size)
{
 unsigned long v;
 unsigned long begin, end;
 unsigned long flags;

 begin = (unsigned long)start & ~(L1_CACHE_BYTES-1);
 end = ((unsigned long)start + size + L1_CACHE_BYTES-1)
  & ~(L1_CACHE_BYTES-1);

 local_irq_save(flags);
 jump_to_uncached();

 for (v = begin; v < end; v+=L1_CACHE_BYTES) {
  unsigned long addr = CACHE_OC_ADDRESS_ARRAY | (v & 0x000007f0);
  int way;
  for (way = 0; way < 4; way++) {
   unsigned long data = ctrl_inl(addr | (way << 11));
   if ((data & CACHE_PHYSADDR_MASK) == (v & CACHE_PHYSADDR_MASK)) {
    data &= ~SH_CACHE_UPDATED;
    ctrl_outl(data, addr | (way << 11));
   }
  }
 }

 back_to_cached();
 local_irq_restore(flags);
}
