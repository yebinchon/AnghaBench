
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;


 int _PAGE_NO_CACHE ;
 int _PAGE_PRESENT ;
 int _PAGE_SPECIAL ;
 int _PAGE_USER ;
 int pte_val (int ) ;

__attribute__((used)) static inline int pte_looks_normal(pte_t pte)
{
 return (pte_val(pte) &
     (_PAGE_PRESENT | _PAGE_SPECIAL | _PAGE_NO_CACHE | _PAGE_USER)) ==
     (_PAGE_PRESENT | _PAGE_USER);
}
