
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;


 int LHCALL_FLUSH_TLB ;
 scalar_t__ cr3_changed ;
 int lazy_hcall1 (int ,int) ;
 int native_set_pte (int *,int ) ;

__attribute__((used)) static void lguest_set_pte(pte_t *ptep, pte_t pteval)
{
 native_set_pte(ptep, pteval);
 if (cr3_changed)
  lazy_hcall1(LHCALL_FLUSH_TLB, 1);
}
