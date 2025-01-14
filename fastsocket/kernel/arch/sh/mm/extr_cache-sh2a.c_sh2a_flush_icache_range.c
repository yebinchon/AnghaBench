
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flusher_data {int addr1; int addr2; } ;


 unsigned long CACHE_IC_ADDRESS_ARRAY ;
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

__attribute__((used)) static void sh2a_flush_icache_range(void *args)
{
 struct flusher_data *data = args;
 unsigned long start, end;
 unsigned long v;
 unsigned long flags;

 start = data->addr1 & ~(L1_CACHE_BYTES-1);
 end = (data->addr2 + L1_CACHE_BYTES-1) & ~(L1_CACHE_BYTES-1);

 local_irq_save(flags);
 jump_to_uncached();

 for (v = start; v < end; v+=L1_CACHE_BYTES) {
  unsigned long addr = (v & 0x000007f0);
  int way;

  for (way = 0; way < 4; way++) {
   unsigned long data = ctrl_inl(CACHE_OC_ADDRESS_ARRAY | addr | (way << 11));
   if ((data & CACHE_PHYSADDR_MASK) == (v & CACHE_PHYSADDR_MASK)) {
    data &= ~SH_CACHE_UPDATED;
    ctrl_outl(data, CACHE_OC_ADDRESS_ARRAY | addr | (way << 11));
   }
  }

  ctrl_outl(addr,
     CACHE_IC_ADDRESS_ARRAY | addr | 0x00000008);
 }

 back_to_cached();
 local_irq_restore(flags);
}
