
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;
typedef int pgprot_t ;


 int __pte (unsigned long) ;
 unsigned long pgprot_val (int ) ;

__attribute__((used)) static pte_t srmmu_mk_pte_io(unsigned long page, pgprot_t pgprot, int space)
{ return __pte(((page) >> 4) | (space << 28) | pgprot_val(pgprot)); }
