
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct amd64_pvt {TYPE_1__* F3; TYPE_1__* F2; TYPE_1__* F1; } ;
struct TYPE_4__ {int vendor; } ;


 int ENODEV ;
 int PCI_VENDOR_ID_AMD ;
 int amd64_err (char*,int ,int ) ;
 int debugf1 (char*,int ) ;
 int pci_dev_put (TYPE_1__*) ;
 void* pci_get_related_function (int ,int ,TYPE_1__*) ;
 int pci_name (TYPE_1__*) ;

__attribute__((used)) static int reserve_mc_sibling_devs(struct amd64_pvt *pvt, u16 f1_id, u16 f3_id)
{

 pvt->F1 = pci_get_related_function(pvt->F2->vendor, f1_id, pvt->F2);
 if (!pvt->F1) {
  amd64_err("error address map device not found: "
     "vendor %x device 0x%x (broken BIOS?)\n",
     PCI_VENDOR_ID_AMD, f1_id);
  return -ENODEV;
 }


 pvt->F3 = pci_get_related_function(pvt->F2->vendor, f3_id, pvt->F2);
 if (!pvt->F3) {
  pci_dev_put(pvt->F1);
  pvt->F1 = ((void*)0);

  amd64_err("error F3 device not found: "
     "vendor %x device 0x%x (broken BIOS?)\n",
     PCI_VENDOR_ID_AMD, f3_id);

  return -ENODEV;
 }
 debugf1("F1: %s\n", pci_name(pvt->F1));
 debugf1("F2: %s\n", pci_name(pvt->F2));
 debugf1("F3: %s\n", pci_name(pvt->F3));

 return 0;
}
