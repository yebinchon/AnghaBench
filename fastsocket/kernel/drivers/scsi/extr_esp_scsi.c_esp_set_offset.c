
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct scsi_target {size_t id; TYPE_1__ dev; } ;
struct esp_target_data {int nego_goal_offset; int flags; } ;
struct esp {struct esp_target_data* target; } ;
struct Scsi_Host {int dummy; } ;


 int ESP_TGT_CHECK_NEGO ;
 struct Scsi_Host* dev_to_shost (int ) ;
 struct esp* shost_priv (struct Scsi_Host*) ;

__attribute__((used)) static void esp_set_offset(struct scsi_target *target, int offset)
{
 struct Scsi_Host *host = dev_to_shost(target->dev.parent);
 struct esp *esp = shost_priv(host);
 struct esp_target_data *tp = &esp->target[target->id];

 tp->nego_goal_offset = offset;
 tp->flags |= ESP_TGT_CHECK_NEGO;
}
