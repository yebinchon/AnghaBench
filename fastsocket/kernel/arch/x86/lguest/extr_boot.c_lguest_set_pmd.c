
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pmd_t ;


 int LHCALL_SET_PGD ;
 int PAGE_MASK ;
 int PAGE_SIZE ;
 int __pa (int *) ;
 int lazy_hcall2 (int ,int,int) ;
 int native_set_pmd (int *,int ) ;

__attribute__((used)) static void lguest_set_pmd(pmd_t *pmdp, pmd_t pmdval)
{
 native_set_pmd(pmdp, pmdval);
 lazy_hcall2(LHCALL_SET_PGD, __pa(pmdp) & PAGE_MASK,
     (__pa(pmdp) & (PAGE_SIZE - 1)) / sizeof(pmd_t));
}
