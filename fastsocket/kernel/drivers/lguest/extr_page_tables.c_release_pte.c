
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;


 int _PAGE_PRESENT ;
 int pte_flags (int ) ;
 int pte_page (int ) ;
 int put_page (int ) ;

__attribute__((used)) static void release_pte(pte_t pte)
{




 if (pte_flags(pte) & _PAGE_PRESENT)
  put_page(pte_page(pte));
}
