
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 scalar_t__ I3200_CAPID0 ;
 int debugf0 (char*) ;
 int pci_read_config_byte (struct pci_dev*,scalar_t__,unsigned char*) ;

__attribute__((used)) static int how_many_channels(struct pci_dev *pdev)
{
 unsigned char capid0_8b;

 pci_read_config_byte(pdev, I3200_CAPID0 + 8, &capid0_8b);
 if (capid0_8b & 0x20) {
  debugf0("In single channel mode.\n");
  return 1;
 } else {
  debugf0("In dual channel mode.\n");
  return 2;
 }
}
