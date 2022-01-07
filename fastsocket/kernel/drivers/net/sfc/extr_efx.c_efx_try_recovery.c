
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct efx_nic {struct pci_dev* pci_dev; } ;
struct device_node {int dummy; } ;


 scalar_t__ eeh_dn_check_failure (struct device_node*,struct pci_dev*) ;
 struct device_node* pci_device_to_OF_node (struct pci_dev*) ;

int efx_try_recovery(struct efx_nic *efx)
{
 return 0;
}
