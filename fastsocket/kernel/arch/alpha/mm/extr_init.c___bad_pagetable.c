
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pmd_t ;


 scalar_t__ EMPTY_PGT ;
 int PAGE_SIZE ;
 int memset (void*,int ,int ) ;

pmd_t *
__bad_pagetable(void)
{
 memset((void *) EMPTY_PGT, 0, PAGE_SIZE);
 return (pmd_t *) EMPTY_PGT;
}
