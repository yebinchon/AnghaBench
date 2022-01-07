
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bus_register_notifier (int *,int *) ;
 int device_nb ;
 int pci_bus_type ;

void amd_iommu_init_notifier(void)
{
 bus_register_notifier(&pci_bus_type, &device_nb);
}
