
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int H_PROTECT ;
 long plpar_hcall_norets (int ,unsigned long,unsigned long,unsigned long) ;

__attribute__((used)) static inline long plpar_pte_protect(unsigned long flags, unsigned long ptex,
  unsigned long avpn)
{
 return plpar_hcall_norets(H_PROTECT, flags, ptex, avpn);
}
