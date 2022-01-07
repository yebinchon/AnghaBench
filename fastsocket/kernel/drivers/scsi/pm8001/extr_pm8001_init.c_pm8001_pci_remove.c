
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sas_ha_struct {struct sas_ha_struct* sas_port; struct sas_ha_struct* sas_phy; struct pm8001_hba_info* lldd_ha; } ;
struct pm8001_hba_info {int number_of_intr; int tasklet; int irq; struct sas_ha_struct* outq; TYPE_1__* msix_entries; int shost; int list; } ;
struct pci_dev {int dummy; } ;
struct TYPE_4__ {int (* chip_soft_rst ) (struct pm8001_hba_info*) ;int (* interrupt_disable ) (struct pm8001_hba_info*,int) ;} ;
struct TYPE_3__ {int vector; } ;


 TYPE_2__* PM8001_CHIP_DISP ;
 int free_irq (int ,struct sas_ha_struct*) ;
 int kfree (struct sas_ha_struct*) ;
 int list_del (int *) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_disable_msix (struct pci_dev*) ;
 struct sas_ha_struct* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;
 int pm8001_free (struct pm8001_hba_info*) ;
 int sas_remove_host (int ) ;
 int sas_unregister_ha (struct sas_ha_struct*) ;
 int scsi_remove_host (int ) ;
 int stub1 (struct pm8001_hba_info*,int) ;
 int stub2 (struct pm8001_hba_info*) ;
 int synchronize_irq (int ) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static void pm8001_pci_remove(struct pci_dev *pdev)
{
 struct sas_ha_struct *sha = pci_get_drvdata(pdev);
 struct pm8001_hba_info *pm8001_ha;
 int i;
 pm8001_ha = sha->lldd_ha;
 pci_set_drvdata(pdev, ((void*)0));
 sas_unregister_ha(sha);
 sas_remove_host(pm8001_ha->shost);
 list_del(&pm8001_ha->list);
 scsi_remove_host(pm8001_ha->shost);
 PM8001_CHIP_DISP->interrupt_disable(pm8001_ha, 0xFF);
 PM8001_CHIP_DISP->chip_soft_rst(pm8001_ha);
 free_irq(pm8001_ha->irq, sha);




 pm8001_free(pm8001_ha);
 kfree(sha->sas_phy);
 kfree(sha->sas_port);
 kfree(sha);
 pci_release_regions(pdev);
 pci_disable_device(pdev);
}
