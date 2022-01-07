
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_target {scalar_t__ target_busy; scalar_t__ target_blocked; struct scsi_device* starget_sdev_user; scalar_t__ single_lun; } ;
struct scsi_device {int starved_entry; } ;
struct Scsi_Host {int starved_list; } ;


 int KERN_INFO ;
 int SCSI_LOG_MLQUEUE (int,int ) ;
 int list_add_tail (int *,int *) ;
 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;
 struct scsi_target* scsi_target (struct scsi_device*) ;
 scalar_t__ scsi_target_is_busy (struct scsi_target*) ;
 int starget_printk (int ,struct scsi_target*,char*) ;

__attribute__((used)) static inline int scsi_target_queue_ready(struct Scsi_Host *shost,
        struct scsi_device *sdev)
{
 struct scsi_target *starget = scsi_target(sdev);

 if (starget->single_lun) {
  if (starget->starget_sdev_user &&
      starget->starget_sdev_user != sdev)
   return 0;
  starget->starget_sdev_user = sdev;
 }

 if (starget->target_busy == 0 && starget->target_blocked) {



  if (--starget->target_blocked == 0) {
   SCSI_LOG_MLQUEUE(3, starget_printk(KERN_INFO, starget,
      "unblocking target at zero depth\n"));
  } else
   return 0;
 }

 if (scsi_target_is_busy(starget)) {
  if (list_empty(&sdev->starved_entry))
   list_add_tail(&sdev->starved_entry,
          &shost->starved_list);
  return 0;
 }


 if (!list_empty(&sdev->starved_entry))
  list_del_init(&sdev->starved_entry);
 return 1;
}
