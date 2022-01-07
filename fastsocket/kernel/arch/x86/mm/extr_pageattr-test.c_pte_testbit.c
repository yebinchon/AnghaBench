
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;


 int _PAGE_UNUSED1 ;
 int pte_flags (int ) ;

__attribute__((used)) static int pte_testbit(pte_t pte)
{
 return pte_flags(pte) & _PAGE_UNUSED1;
}
