
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipr_ioa_cfg {TYPE_1__* host; } ;
struct ipr_cmnd {int (* done ) (struct ipr_cmnd*) ;struct ipr_ioa_cfg* ioa_cfg; } ;
struct TYPE_2__ {int host_lock; } ;


 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int stub1 (struct ipr_cmnd*) ;

__attribute__((used)) static void ipr_lock_and_done(struct ipr_cmnd *ipr_cmd)
{
 unsigned long lock_flags;
 struct ipr_ioa_cfg *ioa_cfg = ipr_cmd->ioa_cfg;

 spin_lock_irqsave(ioa_cfg->host->host_lock, lock_flags);
 ipr_cmd->done(ipr_cmd);
 spin_unlock_irqrestore(ioa_cfg->host->host_lock, lock_flags);
}
