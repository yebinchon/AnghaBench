
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int sdev_gendev; int host; int list_lock; } ;
struct scsi_cmnd {struct scsi_device* device; int list; } ;


 int BUG_ON (int ) ;
 int __scsi_put_command (int ,struct scsi_cmnd*,int *) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void scsi_put_command(struct scsi_cmnd *cmd)
{
 struct scsi_device *sdev = cmd->device;
 unsigned long flags;


 spin_lock_irqsave(&cmd->device->list_lock, flags);
 BUG_ON(list_empty(&cmd->list));
 list_del_init(&cmd->list);
 spin_unlock_irqrestore(&cmd->device->list_lock, flags);

 __scsi_put_command(cmd->device->host, cmd, &sdev->sdev_gendev);
}
