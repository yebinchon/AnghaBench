
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd64_pvt {int F3; int F1; } ;


 int pci_dev_put (int ) ;

__attribute__((used)) static void free_mc_sibling_devs(struct amd64_pvt *pvt)
{
 pci_dev_put(pvt->F1);
 pci_dev_put(pvt->F3);
}
