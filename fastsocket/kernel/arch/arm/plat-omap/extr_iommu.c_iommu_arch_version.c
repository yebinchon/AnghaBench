
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int version; } ;


 TYPE_1__* arch_iommu ;

u32 iommu_arch_version(void)
{
 return arch_iommu->version;
}
