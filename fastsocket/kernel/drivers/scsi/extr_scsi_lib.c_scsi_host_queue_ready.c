
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int starved_entry; } ;
struct request_queue {int dummy; } ;
struct Scsi_Host {scalar_t__ host_busy; scalar_t__ host_blocked; int starved_list; int host_no; } ;


 int SCSI_LOG_MLQUEUE (int,int ) ;
 int list_add_tail (int *,int *) ;
 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;
 int printk (char*,int ) ;
 scalar_t__ scsi_host_in_recovery (struct Scsi_Host*) ;
 scalar_t__ scsi_host_is_busy (struct Scsi_Host*) ;

__attribute__((used)) static inline int scsi_host_queue_ready(struct request_queue *q,
       struct Scsi_Host *shost,
       struct scsi_device *sdev)
{
 if (scsi_host_in_recovery(shost))
  return 0;
 if (shost->host_busy == 0 && shost->host_blocked) {



  if (--shost->host_blocked == 0) {
   SCSI_LOG_MLQUEUE(3,
    printk("scsi%d unblocking host at zero depth\n",
     shost->host_no));
  } else {
   return 0;
  }
 }
 if (scsi_host_is_busy(shost)) {
  if (list_empty(&sdev->starved_entry))
   list_add_tail(&sdev->starved_entry, &shost->starved_list);
  return 0;
 }


 if (!list_empty(&sdev->starved_entry))
  list_del_init(&sdev->starved_entry);

 return 1;
}
