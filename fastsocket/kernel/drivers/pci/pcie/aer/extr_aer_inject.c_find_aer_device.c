
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcie_device {int dummy; } ;
struct pci_dev {int dev; } ;


 int device_for_each_child (int *,struct pcie_device**,int ) ;
 int find_aer_device_iter ;

__attribute__((used)) static int find_aer_device(struct pci_dev *dev, struct pcie_device **result)
{
 return device_for_each_child(&dev->dev, result, find_aer_device_iter);
}
