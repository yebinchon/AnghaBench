
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int GPFN_INV_MASK ;
 int GPFN_IO_MASK ;
 int GPFN_PHYS_MMIO ;
 int kvm_get_mpt_entry (int) ;

__attribute__((used)) static inline u64 __gpfn_is_io(u64 gpfn)
{
 u64 pte;
 pte = kvm_get_mpt_entry(gpfn);
 if (!(pte & GPFN_INV_MASK)) {
  pte = pte & GPFN_IO_MASK;
  if (pte != GPFN_PHYS_MMIO)
   return pte;
 }
 return 0;
}
