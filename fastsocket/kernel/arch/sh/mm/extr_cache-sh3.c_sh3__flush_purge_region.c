
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long entry_mask; } ;
struct TYPE_4__ {TYPE_1__ dcache; } ;


 unsigned long CACHE_OC_ADDRESS_ARRAY ;
 int L1_CACHE_BYTES ;
 unsigned long SH_CACHE_ASSOC ;
 int ctrl_outl (unsigned long,unsigned long) ;
 TYPE_2__ current_cpu_data ;

__attribute__((used)) static void sh3__flush_purge_region(void *start, int size)
{
 unsigned long v;
 unsigned long begin, end;

 begin = (unsigned long)start & ~(L1_CACHE_BYTES-1);
 end = ((unsigned long)start + size + L1_CACHE_BYTES-1)
  & ~(L1_CACHE_BYTES-1);

 for (v = begin; v < end; v+=L1_CACHE_BYTES) {
  unsigned long data, addr;

  data = (v & 0xfffffc00);
  addr = CACHE_OC_ADDRESS_ARRAY |
   (v & current_cpu_data.dcache.entry_mask) | SH_CACHE_ASSOC;
  ctrl_outl(data, addr);
 }
}
