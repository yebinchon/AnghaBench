
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dmar_domain {int agaw; int iommu_bmp; } ;
struct TYPE_2__ {int agaw; } ;


 int find_first_bit (int ,int) ;
 int find_next_bit (int ,int,int) ;
 TYPE_1__** g_iommus ;
 int g_num_of_iommus ;

__attribute__((used)) static int vm_domain_min_agaw(struct dmar_domain *domain)
{
 int i;
 int min_agaw = domain->agaw;

 i = find_first_bit(domain->iommu_bmp, g_num_of_iommus);
 for (; i < g_num_of_iommus; ) {
  if (min_agaw > g_iommus[i]->agaw)
   min_agaw = g_iommus[i]->agaw;

  i = find_next_bit(domain->iommu_bmp, g_num_of_iommus, i+1);
 }

 return min_agaw;
}
