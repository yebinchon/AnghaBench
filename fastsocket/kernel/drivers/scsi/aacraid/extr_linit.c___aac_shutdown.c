
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct fib {int event_wait; TYPE_3__* hw_fib_va; } ;
struct aac_dev {TYPE_4__* pdev; scalar_t__ msi; int thread; struct fib* fibs; TYPE_1__* scsi_host_ptr; scalar_t__ aif_thread; } ;
struct TYPE_8__ {int irq; } ;
struct TYPE_6__ {int XferState; } ;
struct TYPE_7__ {TYPE_2__ header; } ;
struct TYPE_5__ {int can_queue; } ;


 int AAC_NUM_MGT_FIB ;
 int Async ;
 int NoResponseExpected ;
 int ResponseExpected ;
 int aac_adapter_disable_int (struct aac_dev*) ;
 int aac_send_shutdown (struct aac_dev*) ;
 int cpu_to_le32 (int) ;
 int free_irq (int ,struct aac_dev*) ;
 int kthread_stop (int ) ;
 int pci_disable_msi (TYPE_4__*) ;
 int up (int *) ;

__attribute__((used)) static void __aac_shutdown(struct aac_dev * aac)
{
 if (aac->aif_thread) {
  int i;

  for (i = 0; i < (aac->scsi_host_ptr->can_queue + AAC_NUM_MGT_FIB); i++) {
   struct fib *fib = &aac->fibs[i];
   if (!(fib->hw_fib_va->header.XferState & cpu_to_le32(NoResponseExpected | Async)) &&
       (fib->hw_fib_va->header.XferState & cpu_to_le32(ResponseExpected)))
    up(&fib->event_wait);
  }
  kthread_stop(aac->thread);
 }
 aac_send_shutdown(aac);
 aac_adapter_disable_int(aac);
 free_irq(aac->pdev->irq, aac);
 if (aac->msi)
  pci_disable_msi(aac->pdev);
}
