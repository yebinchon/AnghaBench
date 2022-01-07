
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct beiscsi_hba {int dummy; } ;


 int beiscsi_quiesce (struct beiscsi_hba*) ;
 int dev_err (int *,char*) ;
 int pci_disable_device (struct pci_dev*) ;
 scalar_t__ pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void beiscsi_shutdown(struct pci_dev *pcidev)
{

 struct beiscsi_hba *phba = ((void*)0);

 phba = (struct beiscsi_hba *)pci_get_drvdata(pcidev);
 if (!phba) {
  dev_err(&pcidev->dev, "beiscsi_shutdown called with no phba\n");
  return;
 }

 beiscsi_quiesce(phba);
 pci_disable_device(pcidev);
}
