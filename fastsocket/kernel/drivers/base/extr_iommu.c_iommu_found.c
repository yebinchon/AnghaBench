
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * iommu_ops ;

bool iommu_found(void)
{
 return iommu_ops != ((void*)0);
}
