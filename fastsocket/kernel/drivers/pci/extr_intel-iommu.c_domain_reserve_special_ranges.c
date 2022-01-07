
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_domain {int iovad; } ;


 int copy_reserved_iova (int *,int *) ;
 int reserved_iova_list ;

__attribute__((used)) static void domain_reserve_special_ranges(struct dmar_domain *domain)
{
 copy_reserved_iova(&reserved_iova_list, &domain->iovad);
}
