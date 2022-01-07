
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {struct esp_lun_data* hostdata; } ;
struct esp_lun_data {scalar_t__ num_tagged; } ;
struct esp_cmd_entry {TYPE_1__* cmd; } ;
struct esp {int dummy; } ;
struct TYPE_2__ {struct scsi_device* device; } ;


 int scsi_track_queue_full (struct scsi_device*,scalar_t__) ;

__attribute__((used)) static void esp_event_queue_full(struct esp *esp, struct esp_cmd_entry *ent)
{
 struct scsi_device *dev = ent->cmd->device;
 struct esp_lun_data *lp = dev->hostdata;

 scsi_track_queue_full(dev, lp->num_tagged - 1);
}
