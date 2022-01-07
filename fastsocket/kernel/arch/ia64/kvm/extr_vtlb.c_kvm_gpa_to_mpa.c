
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int PAGE_MASK ;
 int PAGE_SHIFT ;
 int kvm_lookup_mpa (int) ;

u64 kvm_gpa_to_mpa(u64 gpa)
{
 u64 pte = kvm_lookup_mpa(gpa >> PAGE_SHIFT);
 return (pte >> PAGE_SHIFT << PAGE_SHIFT) | (gpa & ~PAGE_MASK);
}
