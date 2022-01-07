
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ipr_ioa_cfg {scalar_t__ sdt_state; TYPE_2__* host; struct ipr_cmnd* reset_cmd; int in_reset_reload; TYPE_1__* pdev; int errors_logged; } ;
struct ipr_cmnd {struct ipr_ioa_cfg* ioa_cfg; } ;
struct TYPE_4__ {int host_lock; } ;
struct TYPE_3__ {int dev; } ;


 int ENTER ;
 scalar_t__ GET_DUMP ;
 int IPR_SHUTDOWN_NONE ;
 int LEAVE ;
 scalar_t__ WAIT_FOR_DUMP ;
 int dev_err (int *,char*) ;
 int ipr_initiate_ioa_reset (struct ipr_ioa_cfg*,int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static void ipr_timeout(struct ipr_cmnd *ipr_cmd)
{
 unsigned long lock_flags = 0;
 struct ipr_ioa_cfg *ioa_cfg = ipr_cmd->ioa_cfg;

 ENTER;
 spin_lock_irqsave(ioa_cfg->host->host_lock, lock_flags);

 ioa_cfg->errors_logged++;
 dev_err(&ioa_cfg->pdev->dev,
  "Adapter being reset due to command timeout.\n");

 if (WAIT_FOR_DUMP == ioa_cfg->sdt_state)
  ioa_cfg->sdt_state = GET_DUMP;

 if (!ioa_cfg->in_reset_reload || ioa_cfg->reset_cmd == ipr_cmd)
  ipr_initiate_ioa_reset(ioa_cfg, IPR_SHUTDOWN_NONE);

 spin_unlock_irqrestore(ioa_cfg->host->host_lock, lock_flags);
 LEAVE;
}
