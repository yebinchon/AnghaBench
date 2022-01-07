
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {TYPE_2__* device; } ;
struct qlogicfas408_priv {int qabort; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {int host_lock; } ;


 int SUCCESS ;
 struct qlogicfas408_priv* get_priv_by_cmd (struct scsi_cmnd*) ;
 int ql_zap (struct qlogicfas408_priv*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

int qlogicfas408_bus_reset(struct scsi_cmnd *cmd)
{
 struct qlogicfas408_priv *priv = get_priv_by_cmd(cmd);
 unsigned long flags;

 priv->qabort = 2;

 spin_lock_irqsave(cmd->device->host->host_lock, flags);
 ql_zap(priv);
 spin_unlock_irqrestore(cmd->device->host->host_lock, flags);

 return SUCCESS;
}
