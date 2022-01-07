
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long avpnm; } ;


 unsigned long HPTE_V_AVPN_SHIFT ;
 unsigned long HPTE_V_SSIZE_SHIFT ;
 TYPE_1__* mmu_psize_defs ;

__attribute__((used)) static inline unsigned long hpte_encode_avpn(unsigned long va, int psize,
          int ssize)
{
 unsigned long v;

 v = (va >> 23) & ~(mmu_psize_defs[psize].avpnm);
 v <<= HPTE_V_AVPN_SHIFT;
 v |= ((unsigned long) ssize) << HPTE_V_SSIZE_SHIFT;
 return v;
}
