
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
struct AdapterControlBlock {int eternal_timer; } ;


 int arcmsr_disable_outbound_ints (struct AdapterControlBlock*) ;
 int arcmsr_flush_adapter_cache (struct AdapterControlBlock*) ;
 int arcmsr_stop_adapter_bgrb (struct AdapterControlBlock*) ;
 int del_timer_sync (int *) ;
 int flush_scheduled_work () ;
 struct Scsi_Host* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void arcmsr_shutdown(struct pci_dev *pdev)
{
 struct Scsi_Host *host = pci_get_drvdata(pdev);
 struct AdapterControlBlock *acb =
  (struct AdapterControlBlock *)host->hostdata;
 del_timer_sync(&acb->eternal_timer);
 arcmsr_disable_outbound_ints(acb);
 flush_scheduled_work();
 arcmsr_stop_adapter_bgrb(acb);
 arcmsr_flush_adapter_cache(acb);
}
