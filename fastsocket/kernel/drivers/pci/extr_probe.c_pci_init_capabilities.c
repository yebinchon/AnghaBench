
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int pci_allocate_cap_save_buffers (struct pci_dev*) ;
 int pci_enable_acs (struct pci_dev*) ;
 int pci_enable_ari (struct pci_dev*) ;
 int pci_iov_init (struct pci_dev*) ;
 int pci_msi_init_pci_dev (struct pci_dev*) ;
 int pci_pm_init (struct pci_dev*) ;
 int pci_vpd_pci22_init (struct pci_dev*) ;
 int platform_pci_wakeup_init (struct pci_dev*) ;

__attribute__((used)) static void pci_init_capabilities(struct pci_dev *dev)
{

 pci_msi_init_pci_dev(dev);


 pci_allocate_cap_save_buffers(dev);


 pci_pm_init(dev);
 platform_pci_wakeup_init(dev);


 pci_vpd_pci22_init(dev);


 pci_enable_ari(dev);


 pci_iov_init(dev);


 pci_enable_acs(dev);
}
