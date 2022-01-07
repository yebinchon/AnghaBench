
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct iotlb_entry {int dummy; } ;
struct TYPE_2__ {int (* get_pte_attr ) (struct iotlb_entry*) ;} ;


 TYPE_1__* arch_iommu ;
 int stub1 (struct iotlb_entry*) ;

__attribute__((used)) static u32 get_iopte_attr(struct iotlb_entry *e)
{
 return arch_iommu->get_pte_attr(e);
}
