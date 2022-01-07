
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;


 int pte_val (int ) ;

__attribute__((used)) static inline int srmmu_pte_none(pte_t pte)
{ return !(pte_val(pte) & 0xFFFFFFF); }
