
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;


 int SRMMU_WRITE ;
 int __pte (int) ;
 int pte_val (int ) ;

__attribute__((used)) static inline pte_t srmmu_pte_mkwrite(pte_t pte)
{ return __pte(pte_val(pte) | SRMMU_WRITE);}
