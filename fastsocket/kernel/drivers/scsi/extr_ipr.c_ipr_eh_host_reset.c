
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct scsi_cmnd {TYPE_2__* device; } ;
struct ipr_ioa_cfg {scalar_t__ sdt_state; TYPE_5__* host; TYPE_4__* hrrq; int in_reset_reload; int reset_wait_q; TYPE_3__* pdev; } ;
struct TYPE_10__ {int host_lock; } ;
struct TYPE_9__ {scalar_t__ ioa_is_dead; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_7__ {TYPE_1__* host; } ;
struct TYPE_6__ {scalar_t__ hostdata; } ;


 int ENTER ;
 int FAILED ;
 scalar_t__ GET_DUMP ;
 size_t IPR_INIT_HRRQ ;
 int IPR_SHUTDOWN_ABBREV ;
 int LEAVE ;
 int SUCCESS ;
 scalar_t__ WAIT_FOR_DUMP ;
 int dev_err (int *,char*) ;
 int ipr_initiate_ioa_reset (struct ipr_ioa_cfg*,int ) ;
 int ipr_trace ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int wait_event (int ,int) ;

__attribute__((used)) static int ipr_eh_host_reset(struct scsi_cmnd *cmd)
{
 struct ipr_ioa_cfg *ioa_cfg;
 unsigned long lock_flags = 0;
 int rc = SUCCESS;

 ENTER;
 ioa_cfg = (struct ipr_ioa_cfg *) cmd->device->host->hostdata;
 spin_lock_irqsave(ioa_cfg->host->host_lock, lock_flags);

 if (!ioa_cfg->in_reset_reload && !ioa_cfg->hrrq[IPR_INIT_HRRQ].ioa_is_dead) {
  ipr_initiate_ioa_reset(ioa_cfg, IPR_SHUTDOWN_ABBREV);
  dev_err(&ioa_cfg->pdev->dev,
   "Adapter being reset as a result of error recovery.\n");

  if (WAIT_FOR_DUMP == ioa_cfg->sdt_state)
   ioa_cfg->sdt_state = GET_DUMP;
 }

 spin_unlock_irqrestore(ioa_cfg->host->host_lock, lock_flags);
 wait_event(ioa_cfg->reset_wait_q, !ioa_cfg->in_reset_reload);
 spin_lock_irqsave(ioa_cfg->host->host_lock, lock_flags);



 if (ioa_cfg->hrrq[IPR_INIT_HRRQ].ioa_is_dead) {
  ipr_trace;
  rc = FAILED;
 }
 spin_unlock_irqrestore(ioa_cfg->host->host_lock, lock_flags);
 LEAVE;
 return rc;
}
