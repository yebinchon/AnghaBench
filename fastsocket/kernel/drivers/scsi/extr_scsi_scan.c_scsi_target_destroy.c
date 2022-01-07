
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int parent; } ;
struct scsi_target {int siblings; struct device dev; } ;
struct Scsi_Host {int host_lock; TYPE_1__* hostt; } ;
struct TYPE_2__ {int (* target_destroy ) (struct scsi_target*) ;} ;


 struct Scsi_Host* dev_to_shost (int ) ;
 int list_del_init (int *) ;
 int put_device (struct device*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int stub1 (struct scsi_target*) ;
 int transport_destroy_device (struct device*) ;

__attribute__((used)) static void scsi_target_destroy(struct scsi_target *starget)
{
 struct device *dev = &starget->dev;
 struct Scsi_Host *shost = dev_to_shost(dev->parent);
 unsigned long flags;

 transport_destroy_device(dev);
 spin_lock_irqsave(shost->host_lock, flags);
 if (shost->hostt->target_destroy)
  shost->hostt->target_destroy(starget);
 list_del_init(&starget->siblings);
 spin_unlock_irqrestore(shost->host_lock, flags);
 put_device(dev);
}
