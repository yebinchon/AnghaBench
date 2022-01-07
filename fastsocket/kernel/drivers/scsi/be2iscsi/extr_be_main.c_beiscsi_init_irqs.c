
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int irq; } ;
struct hwi_controller {struct hwi_context_memory* phwi_ctxt; } ;
struct hwi_context_memory {struct beiscsi_hba* be_eq; } ;
struct beiscsi_hba {int num_cpus; char** msi_name; TYPE_2__* msix_entries; TYPE_1__* shost; scalar_t__ msix_enabled; struct hwi_controller* phwi_ctrlr; struct pci_dev* pcidev; } ;
struct TYPE_4__ {int vector; } ;
struct TYPE_3__ {int host_no; } ;


 int BEISCSI_LOG_INIT ;
 int BEISCSI_MSI_NAME ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_SHARED ;
 int KERN_ERR ;
 int be_isr ;
 int be_isr_mcc ;
 int be_isr_msix ;
 int beiscsi_log (struct beiscsi_hba*,int ,int ,char*,...) ;
 int free_irq (int,struct beiscsi_hba*) ;
 int kfree (char*) ;
 void* kzalloc (int ,int ) ;
 int request_irq (int,int ,int ,char*,struct beiscsi_hba*) ;
 int sprintf (char*,char*,int,...) ;

__attribute__((used)) static int beiscsi_init_irqs(struct beiscsi_hba *phba)
{
 struct pci_dev *pcidev = phba->pcidev;
 struct hwi_controller *phwi_ctrlr;
 struct hwi_context_memory *phwi_context;
 int ret, msix_vec, i, j;

 phwi_ctrlr = phba->phwi_ctrlr;
 phwi_context = phwi_ctrlr->phwi_ctxt;

 if (phba->msix_enabled) {
  for (i = 0; i < phba->num_cpus; i++) {
   phba->msi_name[i] = kzalloc(BEISCSI_MSI_NAME, GFP_KERNEL);
   if (!phba->msi_name[i]) {
    ret = -ENOMEM;
    goto free_msix_irqs;
   }

   sprintf(phba->msi_name[i], "beiscsi_%02x_%02x",
    phba->shost->host_no, i);
   msix_vec = phba->msix_entries[i].vector;
   ret = request_irq(msix_vec, be_isr_msix, 0,
       phba->msi_name[i],
       &phwi_context->be_eq[i]);
   if (ret) {
    beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_INIT,
         "BM_%d : beiscsi_init_irqs-Failed to"
         "register msix for i = %d\n",
         i);
    kfree(phba->msi_name[i]);
    goto free_msix_irqs;
   }
  }
  phba->msi_name[i] = kzalloc(BEISCSI_MSI_NAME, GFP_KERNEL);
  if (!phba->msi_name[i]) {
   ret = -ENOMEM;
   goto free_msix_irqs;
  }
  sprintf(phba->msi_name[i], "beiscsi_mcc_%02x",
   phba->shost->host_no);
  msix_vec = phba->msix_entries[i].vector;
  ret = request_irq(msix_vec, be_isr_mcc, 0, phba->msi_name[i],
      &phwi_context->be_eq[i]);
  if (ret) {
   beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_INIT ,
        "BM_%d : beiscsi_init_irqs-"
        "Failed to register beiscsi_msix_mcc\n");
   kfree(phba->msi_name[i]);
   goto free_msix_irqs;
  }

 } else {
  ret = request_irq(pcidev->irq, be_isr, IRQF_SHARED,
      "beiscsi", phba);
  if (ret) {
   beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_INIT,
        "BM_%d : beiscsi_init_irqs-"
        "Failed to register irq\\n");
   return ret;
  }
 }
 return 0;
free_msix_irqs:
 for (j = i - 1; j >= 0; j--) {
  kfree(phba->msi_name[j]);
  msix_vec = phba->msix_entries[j].vector;
  free_irq(msix_vec, &phwi_context->be_eq[j]);
 }
 return ret;
}
