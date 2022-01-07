
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long CACHED_BOOTROM ;
 unsigned long PAGE_MASK ;

__attribute__((used)) static inline void
flush_etrax_cacherange(void *startadr, int length)
{




 volatile short *flushadr = (volatile short *)(((unsigned long)startadr & ~PAGE_MASK) |
            CACHED_BOOTROM);

 length = length > 8192 ? 8192 : length;

 while(length > 0) {
  *flushadr;
  flushadr += (32/sizeof(short));
  length -= 32;
 }
}
