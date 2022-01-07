
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct beiscsi_hba {int shost; int pcidev; int boot_kset; } ;


 int beiscsi_destroy_def_ifaces (struct beiscsi_hba*) ;
 int beiscsi_quiesce (struct beiscsi_hba*) ;
 int dev_err (int *,char*) ;
 int iscsi_boot_destroy_kset (int ) ;
 int iscsi_host_free (int ) ;
 int iscsi_host_remove (int ) ;
 int pci_dev_put (int ) ;
 int pci_disable_device (struct pci_dev*) ;
 struct beiscsi_hba* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void beiscsi_remove(struct pci_dev *pcidev)
{

 struct beiscsi_hba *phba = ((void*)0);

 phba = pci_get_drvdata(pcidev);
 if (!phba) {
  dev_err(&pcidev->dev, "beiscsi_remove called with no phba\n");
  return;
 }

 beiscsi_destroy_def_ifaces(phba);
 beiscsi_quiesce(phba);
 iscsi_boot_destroy_kset(phba->boot_kset);
 iscsi_host_remove(phba->shost);
 pci_dev_put(phba->pcidev);
 iscsi_host_free(phba->shost);
 pci_disable_device(pcidev);
}
