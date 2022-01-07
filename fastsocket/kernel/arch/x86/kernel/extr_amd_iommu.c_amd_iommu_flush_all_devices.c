
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flush_devices_by_domain (int *) ;

void amd_iommu_flush_all_devices(void)
{
 flush_devices_by_domain(((void*)0));
}
