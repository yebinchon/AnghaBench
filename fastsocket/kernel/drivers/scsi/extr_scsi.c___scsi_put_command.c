
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int list; } ;
struct device {int dummy; } ;
struct Scsi_Host {int cmd_pool; int free_list_lock; int free_list; } ;


 scalar_t__ likely (int ) ;
 int list_add (int *,int *) ;
 int list_empty (int *) ;
 int put_device (struct device*) ;
 int scsi_pool_free_command (int ,struct scsi_cmnd*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int ) ;

void __scsi_put_command(struct Scsi_Host *shost, struct scsi_cmnd *cmd,
   struct device *dev)
{
 unsigned long flags;


 spin_lock_irqsave(&shost->free_list_lock, flags);
 if (unlikely(list_empty(&shost->free_list))) {
  list_add(&cmd->list, &shost->free_list);
  cmd = ((void*)0);
 }
 spin_unlock_irqrestore(&shost->free_list_lock, flags);

 if (likely(cmd != ((void*)0)))
  scsi_pool_free_command(shost->cmd_pool, cmd);

 put_device(dev);
}
