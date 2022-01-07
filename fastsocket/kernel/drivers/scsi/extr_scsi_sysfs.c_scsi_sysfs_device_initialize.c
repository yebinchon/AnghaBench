
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct scsi_target {int devices; int scsi_level; } ;
struct TYPE_5__ {int * class; int parent; int * type; int * bus; } ;
struct scsi_device {int siblings; int same_target_siblings; TYPE_1__ sdev_gendev; int scsi_level; int lun; int id; int channel; struct Scsi_Host* host; TYPE_1__ sdev_dev; struct scsi_target* sdev_target; } ;
struct Scsi_Host {int host_lock; int __devices; int host_no; } ;


 int dev_set_name (TYPE_1__*,char*,int ,int ,int ,int ) ;
 int device_initialize (TYPE_1__*) ;
 int get_device (TYPE_1__*) ;
 int list_add_tail (int *,int *) ;
 int scsi_bus_type ;
 int scsi_dev_type ;
 int sdev_class ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int transport_setup_device (TYPE_1__*) ;

void scsi_sysfs_device_initialize(struct scsi_device *sdev)
{
 unsigned long flags;
 struct Scsi_Host *shost = sdev->host;
 struct scsi_target *starget = sdev->sdev_target;

 device_initialize(&sdev->sdev_gendev);
 sdev->sdev_gendev.bus = &scsi_bus_type;
 sdev->sdev_gendev.type = &scsi_dev_type;
 dev_set_name(&sdev->sdev_gendev, "%d:%d:%d:%d",
       sdev->host->host_no, sdev->channel, sdev->id, sdev->lun);

 device_initialize(&sdev->sdev_dev);
 sdev->sdev_dev.parent = get_device(&sdev->sdev_gendev);
 sdev->sdev_dev.class = &sdev_class;
 dev_set_name(&sdev->sdev_dev, "%d:%d:%d:%d",
       sdev->host->host_no, sdev->channel, sdev->id, sdev->lun);
 sdev->scsi_level = starget->scsi_level;
 transport_setup_device(&sdev->sdev_gendev);
 spin_lock_irqsave(shost->host_lock, flags);
 list_add_tail(&sdev->same_target_siblings, &starget->devices);
 list_add_tail(&sdev->siblings, &shost->__devices);
 spin_unlock_irqrestore(shost->host_lock, flags);
}
