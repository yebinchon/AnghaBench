
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int sdev_gendev; int list_lock; int cmd_list; int host; } ;
struct scsi_cmnd {int jiffies_at_alloc; int list; struct scsi_device* device; } ;
typedef int gfp_t ;


 int INIT_LIST_HEAD (int *) ;
 struct scsi_cmnd* __scsi_get_command (int ,int ) ;
 int get_device (int *) ;
 int jiffies ;
 scalar_t__ likely (int ) ;
 int list_add_tail (int *,int *) ;
 int put_device (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct scsi_cmnd *scsi_get_command(struct scsi_device *dev, gfp_t gfp_mask)
{
 struct scsi_cmnd *cmd;


 if (!get_device(&dev->sdev_gendev))
  return ((void*)0);

 cmd = __scsi_get_command(dev->host, gfp_mask);

 if (likely(cmd != ((void*)0))) {
  unsigned long flags;

  cmd->device = dev;
  INIT_LIST_HEAD(&cmd->list);
  spin_lock_irqsave(&dev->list_lock, flags);
  list_add_tail(&cmd->list, &dev->cmd_list);
  spin_unlock_irqrestore(&dev->list_lock, flags);
  cmd->jiffies_at_alloc = jiffies;
 } else
  put_device(&dev->sdev_gendev);

 return cmd;
}
