
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dn {int dummy; } ;
struct pci_dev {int dummy; } ;


 int RTAS_CHANGE_FN ;
 int RTAS_CHANGE_MSI_FN ;
 struct pci_dn* get_pdn (struct pci_dev*) ;
 int pr_debug (char*) ;
 scalar_t__ rtas_change_msi (struct pci_dn*,int ,int ) ;

__attribute__((used)) static void rtas_disable_msi(struct pci_dev *pdev)
{
 struct pci_dn *pdn;

 pdn = get_pdn(pdev);
 if (!pdn)
  return;




 if (rtas_change_msi(pdn, RTAS_CHANGE_MSI_FN, 0) != 0) {




  if (rtas_change_msi(pdn, RTAS_CHANGE_FN, 0) != 0) {
   pr_debug("rtas_msi: Setting MSIs to 0 failed!\n");
  }
 }
}
