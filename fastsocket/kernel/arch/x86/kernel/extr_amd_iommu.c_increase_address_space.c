
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct protection_domain {scalar_t__ mode; int updated; int * pt_root; } ;
typedef int gfp_t ;


 scalar_t__ PAGE_MODE_6_LEVEL ;
 int PM_LEVEL_PDE (scalar_t__,int ) ;
 scalar_t__ get_zeroed_page (int ) ;
 int virt_to_phys (int *) ;

__attribute__((used)) static bool increase_address_space(struct protection_domain *domain,
       gfp_t gfp)
{
 u64 *pte;

 if (domain->mode == PAGE_MODE_6_LEVEL)

  return 0;

 pte = (void *)get_zeroed_page(gfp);
 if (!pte)
  return 0;

 *pte = PM_LEVEL_PDE(domain->mode,
     virt_to_phys(domain->pt_root));
 domain->pt_root = pte;
 domain->mode += 1;
 domain->updated = 1;

 return 1;
}
