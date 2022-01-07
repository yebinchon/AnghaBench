
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int slb_shadow_update (unsigned long,int,unsigned long,unsigned long) ;

__attribute__((used)) static inline void create_shadowed_slbe(unsigned long ea, int ssize,
     unsigned long flags,
     unsigned long entry)
{





 slb_shadow_update(ea, ssize, flags, entry);

 asm volatile("slbmte  %0,%1" :
       : "r" (mk_vsid_data(ea, ssize, flags)),
         "r" (mk_esid_data(ea, ssize, entry))
       : "memory" );
}
