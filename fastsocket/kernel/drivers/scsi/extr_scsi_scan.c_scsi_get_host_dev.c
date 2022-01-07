
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_target {int dev; } ;
struct TYPE_2__ {int parent; } ;
struct scsi_device {scalar_t__ borken; TYPE_1__ sdev_gendev; } ;
struct Scsi_Host {int scan_mutex; int this_id; int shost_gendev; } ;


 int get_device (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_device (int *) ;
 struct scsi_device* scsi_alloc_sdev (struct scsi_target*,int ,int *) ;
 struct scsi_target* scsi_alloc_target (int *,int ,int ) ;
 int scsi_host_scan_allowed (struct Scsi_Host*) ;
 int scsi_target_reap (struct scsi_target*) ;

struct scsi_device *scsi_get_host_dev(struct Scsi_Host *shost)
{
 struct scsi_device *sdev = ((void*)0);
 struct scsi_target *starget;

 mutex_lock(&shost->scan_mutex);
 if (!scsi_host_scan_allowed(shost))
  goto out;
 starget = scsi_alloc_target(&shost->shost_gendev, 0, shost->this_id);
 if (!starget)
  goto out;

 sdev = scsi_alloc_sdev(starget, 0, ((void*)0));
 if (sdev) {
  sdev->sdev_gendev.parent = get_device(&starget->dev);
  sdev->borken = 0;
 } else
  scsi_target_reap(starget);
 put_device(&starget->dev);
 out:
 mutex_unlock(&shost->scan_mutex);
 return sdev;
}
