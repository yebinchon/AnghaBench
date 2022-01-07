
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dmar_domain {int iommu_snooping; int iommu_bmp; } ;
struct TYPE_2__ {int ecap; } ;


 int ecap_sc_support (int ) ;
 int find_first_bit (int ,int) ;
 int find_next_bit (int ,int,int) ;
 TYPE_1__** g_iommus ;
 int g_num_of_iommus ;

__attribute__((used)) static void domain_update_iommu_snooping(struct dmar_domain *domain)
{
 int i;

 domain->iommu_snooping = 1;

 i = find_first_bit(domain->iommu_bmp, g_num_of_iommus);
 for (; i < g_num_of_iommus; ) {
  if (!ecap_sc_support(g_iommus[i]->ecap)) {
   domain->iommu_snooping = 0;
   break;
  }
  i = find_next_bit(domain->iommu_bmp, g_num_of_iommus, i+1);
 }
}
