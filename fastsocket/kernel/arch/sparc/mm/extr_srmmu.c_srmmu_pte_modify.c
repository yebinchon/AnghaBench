
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;
typedef int pgprot_t ;


 int SRMMU_CHG_MASK ;
 int __pte (int) ;
 int pgprot_val (int ) ;
 int pte_val (int ) ;

__attribute__((used)) static inline pte_t srmmu_pte_modify(pte_t pte, pgprot_t newprot)
{ return __pte((pte_val(pte) & SRMMU_CHG_MASK) | pgprot_val(newprot)); }
