
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct pci_dn {int devfn; int busno; } ;
struct device_node {int dummy; } ;


 struct pci_dn* PCI_DN (struct device_node*) ;
 int PCI_RETRY_MAX ;
 scalar_t__ limit_pci_retries ;
 int mf_display_src (int) ;
 int panic (char*) ;
 scalar_t__ panic_timeout ;
 int printk (char*,char*,int ,int ,int,int) ;

__attribute__((used)) static int check_return_code(char *type, struct device_node *dn,
  int *retry, u64 ret)
{
 if (ret != 0) {
  struct pci_dn *pdn = PCI_DN(dn);

  (*retry)++;
  printk("PCI: %s: Device 0x%04X:%02X  I/O Error(%2d): 0x%04X\n",
    type, pdn->busno, pdn->devfn,
    *retry, (int)ret);




  if (((*retry) > PCI_RETRY_MAX) &&
    (limit_pci_retries > 0)) {
   mf_display_src(0xB6000103);
   panic_timeout = 0;
   panic("PCI: Hardware I/O Error, SRC B6000103, "
     "Automatic Reboot Disabled.\n");
  }
  return -1;
 }
 return 0;
}
