
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsp_que {struct qla_msix_entry* msix; struct qla_hw_data* hw; } ;
struct qla_msix_entry {int have_irq; struct rsp_que* rsp; int vector; } ;
struct qla_init_msix_entry {int name; int handler; } ;
struct qla_hw_data {int pdev; } ;
typedef int scsi_qla_host_t ;


 struct qla_init_msix_entry* msix_entries ;
 int * pci_get_drvdata (int ) ;
 int ql_log (int ,int *,int,char*,int ,int) ;
 int ql_log_fatal ;
 int request_irq (int ,int ,int ,int ,struct rsp_que*) ;

int qla25xx_request_irq(struct rsp_que *rsp)
{
 struct qla_hw_data *ha = rsp->hw;
 struct qla_init_msix_entry *intr = &msix_entries[2];
 struct qla_msix_entry *msix = rsp->msix;
 scsi_qla_host_t *vha = pci_get_drvdata(ha->pdev);
 int ret;

 ret = request_irq(msix->vector, intr->handler, 0, intr->name, rsp);
 if (ret) {
  ql_log(ql_log_fatal, vha, 0x00e6,
      "MSI-X: Unable to register handler -- %x/%d.\n",
      msix->vector, ret);
  return ret;
 }
 msix->have_irq = 1;
 msix->rsp = rsp;
 return ret;
}
