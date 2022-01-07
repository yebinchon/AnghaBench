
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {size_t id; int sdev_target; TYPE_1__* host; scalar_t__ tagged_supported; scalar_t__ sdtr; scalar_t__ ppr; } ;
struct esp_target_data {int flags; } ;
struct esp {int flags; struct esp_target_data* target; } ;
struct TYPE_2__ {int cmd_per_lun; } ;


 int ESP_DEFAULT_TAGS ;
 int ESP_FLAG_DISABLE_SYNC ;
 int ESP_MAX_TAG ;
 int ESP_TGT_DISCONNECT ;
 int MSG_ORDERED_TAG ;
 int scsi_activate_tcq (struct scsi_device*,int) ;
 int scsi_deactivate_tcq (struct scsi_device*,int) ;
 int scsi_set_tag_type (struct scsi_device*,int ) ;
 struct esp* shost_priv (TYPE_1__*) ;
 int spi_dv_device (struct scsi_device*) ;
 int spi_initial_dv (int ) ;

__attribute__((used)) static int esp_slave_configure(struct scsi_device *dev)
{
 struct esp *esp = shost_priv(dev->host);
 struct esp_target_data *tp = &esp->target[dev->id];
 int goal_tags, queue_depth;

 if (esp->flags & ESP_FLAG_DISABLE_SYNC) {

  dev->ppr = 0;
  dev->sdtr = 0;
 }

 goal_tags = 0;

 if (dev->tagged_supported) {

  goal_tags = ESP_DEFAULT_TAGS;

  if (goal_tags > ESP_MAX_TAG)
   goal_tags = ESP_MAX_TAG;
 }

 queue_depth = goal_tags;
 if (queue_depth < dev->host->cmd_per_lun)
  queue_depth = dev->host->cmd_per_lun;

 if (goal_tags) {
  scsi_set_tag_type(dev, MSG_ORDERED_TAG);
  scsi_activate_tcq(dev, queue_depth);
 } else {
  scsi_deactivate_tcq(dev, queue_depth);
 }
 tp->flags |= ESP_TGT_DISCONNECT;

 if (!spi_initial_dv(dev->sdev_target))
  spi_dv_device(dev);

 return 0;
}
