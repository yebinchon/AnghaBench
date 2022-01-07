
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {scalar_t__ device; scalar_t__ revision; int dev; } ;


 scalar_t__ PCI_DEVICE_ID_VIA_8363_0 ;
 scalar_t__ PCI_DEVICE_ID_VIA_8367_0 ;
 int PCI_LATENCY_TIMER ;
 scalar_t__ VIA_8363_KL133_REVISION_ID ;
 scalar_t__ VIA_8363_KM133_REVISION_ID ;
 int dev_warn (int *,char*,scalar_t__,scalar_t__,int,int,int,int) ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;

__attribute__((used)) static void pci_fixup_via_northbridge_bug(struct pci_dev *d)
{
 u8 v;
 int where = 0x55;
 int mask = 0x1f;

 if (d->device == PCI_DEVICE_ID_VIA_8367_0) {



  pci_write_config_byte(d, PCI_LATENCY_TIMER, 0);

  where = 0x95;

 } else if (d->device == PCI_DEVICE_ID_VIA_8363_0 &&
   (d->revision == VIA_8363_KL133_REVISION_ID ||
   d->revision == VIA_8363_KM133_REVISION_ID)) {
   mask = 0x3f;

 }

 pci_read_config_byte(d, where, &v);
 if (v & ~mask) {
  dev_warn(&d->dev, "Disabling VIA memory write queue (PCI ID %04x, rev %02x): [%02x] %02x & %02x -> %02x\n", d->device, d->revision, where, v, mask, v & mask);

  v &= mask;
  pci_write_config_byte(d, where, v);
 }
}
