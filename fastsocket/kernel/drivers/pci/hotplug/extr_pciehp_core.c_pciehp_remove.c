
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcie_device {int dummy; } ;
struct controller {int dummy; } ;


 int cleanup_slot (struct controller*) ;
 struct controller* get_service_data (struct pcie_device*) ;
 int pciehp_release_ctrl (struct controller*) ;

__attribute__((used)) static void pciehp_remove(struct pcie_device *dev)
{
 struct controller *ctrl = get_service_data(dev);

 cleanup_slot(ctrl);
 pciehp_release_ctrl(ctrl);
}
