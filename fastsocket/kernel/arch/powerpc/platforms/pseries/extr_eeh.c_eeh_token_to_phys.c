
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pte_t ;
struct TYPE_2__ {int pgd; } ;


 unsigned long PAGE_SHIFT ;
 int PAGE_SIZE ;
 int * find_linux_pte (int ,unsigned long) ;
 TYPE_1__ init_mm ;
 unsigned long pte_pfn (int ) ;

__attribute__((used)) static inline unsigned long eeh_token_to_phys(unsigned long token)
{
 pte_t *ptep;
 unsigned long pa;

 ptep = find_linux_pte(init_mm.pgd, token);
 if (!ptep)
  return token;
 pa = pte_pfn(*ptep) << PAGE_SHIFT;

 return pa | (token & (PAGE_SIZE-1));
}
