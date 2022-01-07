
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qla_msix_entry {int rsp; int vector; scalar_t__ have_irq; } ;
struct TYPE_2__ {scalar_t__ msix_enabled; } ;
struct qla_hw_data {int msix_count; TYPE_1__ flags; struct qla_msix_entry* msix_entries; int pdev; } ;
typedef int scsi_qla_host_t ;


 int free_irq (int ,int ) ;
 int kfree (struct qla_msix_entry*) ;
 int pci_disable_msix (int ) ;
 int * pci_get_drvdata (int ) ;
 int ql_dbg (int ,int *,int,char*) ;
 int ql_dbg_init ;

__attribute__((used)) static void
qla24xx_disable_msix(struct qla_hw_data *ha)
{
 int i;
 struct qla_msix_entry *qentry;
 scsi_qla_host_t *vha = pci_get_drvdata(ha->pdev);

 for (i = 0; i < ha->msix_count; i++) {
  qentry = &ha->msix_entries[i];
  if (qentry->have_irq)
   free_irq(qentry->vector, qentry->rsp);
 }
 pci_disable_msix(ha->pdev);
 kfree(ha->msix_entries);
 ha->msix_entries = ((void*)0);
 ha->flags.msix_enabled = 0;
 ql_dbg(ql_dbg_init, vha, 0x0042,
     "Disabled the MSI.\n");
}
