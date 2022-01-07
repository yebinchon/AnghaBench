
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int _PAGE_PPN_MASK ;
 int kvm_get_mpt_entry (int) ;

u64 kvm_lookup_mpa(u64 gpfn)
{
 u64 maddr;
 maddr = kvm_get_mpt_entry(gpfn);
 return maddr&_PAGE_PPN_MASK;
}
