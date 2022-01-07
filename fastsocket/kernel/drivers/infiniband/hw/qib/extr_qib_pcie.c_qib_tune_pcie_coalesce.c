
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef unsigned int u32 ;
typedef int u16 ;
struct qib_devdata {TYPE_3__* pcidev; } ;
struct pci_dev {int vendor; int device; TYPE_2__* bus; } ;
struct TYPE_6__ {TYPE_1__* bus; } ;
struct TYPE_5__ {scalar_t__ parent; } ;
struct TYPE_4__ {struct pci_dev* self; } ;


 int PCI_REVISION_ID ;
 int pci_is_pcie (struct pci_dev*) ;
 int pci_read_config_byte (struct pci_dev*,int ,int*) ;
 int pci_read_config_dword (struct pci_dev*,int,unsigned int*) ;
 int pci_write_config_dword (struct pci_dev*,int,unsigned int) ;
 int qib_devinfo (TYPE_3__*,char*) ;
 int qib_pcie_coalesce ;

__attribute__((used)) static int qib_tune_pcie_coalesce(struct qib_devdata *dd)
{
 int r;
 struct pci_dev *parent;
 u16 devid;
 u32 mask, bits, val;

 if (!qib_pcie_coalesce)
  return 0;


 parent = dd->pcidev->bus->self;
 if (parent->bus->parent) {
  qib_devinfo(dd->pcidev, "Parent not root\n");
  return 1;
 }
 if (!pci_is_pcie(parent))
  return 1;
 if (parent->vendor != 0x8086)
  return 1;
 devid = parent->device;
 if (devid >= 0x25e2 && devid <= 0x25fa) {
  u8 rev;


  pci_read_config_byte(parent, PCI_REVISION_ID, &rev);
  if (rev <= 0xb2)
   bits = 1U << 10;
  else
   bits = 7U << 10;
  mask = (3U << 24) | (7U << 10);
 } else if (devid >= 0x65e2 && devid <= 0x65fa) {

  bits = 1U << 10;
  mask = (3U << 24) | (7U << 10);
 } else if (devid >= 0x4021 && devid <= 0x402e) {

  bits = 7U << 10;
  mask = 7U << 10;
 } else if (devid >= 0x3604 && devid <= 0x360a) {

  bits = 7U << 10;
  mask = (3U << 24) | (7U << 10);
 } else {

  return 1;
 }
 pci_read_config_dword(parent, 0x48, &val);
 val &= ~mask;
 val |= bits;
 r = pci_write_config_dword(parent, 0x48, val);
 return 0;
}
