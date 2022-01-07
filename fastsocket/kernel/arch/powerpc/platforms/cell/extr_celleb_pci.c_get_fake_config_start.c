
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_controller {struct celleb_pci_private* private_data; } ;
struct celleb_pci_private {unsigned char*** fake_config; } ;



__attribute__((used)) static unsigned char *get_fake_config_start(struct pci_controller *hose,
         int devno, int fn)
{
 struct celleb_pci_private *private = hose->private_data;

 if (private == ((void*)0))
  return ((void*)0);

 return private->fake_config[devno][fn];
}
