
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue_struct {int dummy; } ;
struct pci_dev {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct MPT2SAS_ADAPTER {int remove_host; int fw_event_lock; struct workqueue_struct* firmware_event_thread; } ;


 int _scsih_fw_event_cleanup_queue (struct MPT2SAS_ADAPTER*) ;
 int _scsih_ir_shutdown (struct MPT2SAS_ADAPTER*) ;
 int destroy_workqueue (struct workqueue_struct*) ;
 int mpt2sas_base_detach (struct MPT2SAS_ADAPTER*) ;
 struct Scsi_Host* pci_get_drvdata (struct pci_dev*) ;
 struct MPT2SAS_ADAPTER* shost_priv (struct Scsi_Host*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
_scsih_shutdown(struct pci_dev *pdev)
{
 struct Scsi_Host *shost = pci_get_drvdata(pdev);
 struct MPT2SAS_ADAPTER *ioc = shost_priv(shost);
 struct workqueue_struct *wq;
 unsigned long flags;

 ioc->remove_host = 1;
 _scsih_fw_event_cleanup_queue(ioc);

 spin_lock_irqsave(&ioc->fw_event_lock, flags);
 wq = ioc->firmware_event_thread;
 ioc->firmware_event_thread = ((void*)0);
 spin_unlock_irqrestore(&ioc->fw_event_lock, flags);
 if (wq)
  destroy_workqueue(wq);

 _scsih_ir_shutdown(ioc);
 mpt2sas_base_detach(ioc);
}
