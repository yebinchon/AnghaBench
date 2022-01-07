
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {int result; int (* scsi_done ) (struct scsi_cmnd*) ;TYPE_2__* device; } ;
struct esp_cmd_entry {int flags; int list; int * sense_ptr; int sense_dma; struct scsi_cmnd* cmd; } ;
struct esp {TYPE_1__* ops; } ;
struct TYPE_4__ {int hostdata; } ;
struct TYPE_3__ {int (* unmap_single ) (struct esp*,int ,int ,int ) ;} ;


 int DID_RESET ;
 int DMA_FROM_DEVICE ;
 int ESP_CMD_FLAG_AUTOSENSE ;
 int SCSI_SENSE_BUFFERSIZE ;
 int esp_free_lun_tag (struct esp_cmd_entry*,int ) ;
 int esp_put_ent (struct esp*,struct esp_cmd_entry*) ;
 int esp_unmap_dma (struct esp*,struct scsi_cmnd*) ;
 int list_del (int *) ;
 int stub1 (struct esp*,int ,int ,int ) ;
 int stub2 (struct scsi_cmnd*) ;

__attribute__((used)) static void esp_reset_cleanup_one(struct esp *esp, struct esp_cmd_entry *ent)
{
 struct scsi_cmnd *cmd = ent->cmd;

 esp_unmap_dma(esp, cmd);
 esp_free_lun_tag(ent, cmd->device->hostdata);
 cmd->result = DID_RESET << 16;

 if (ent->flags & ESP_CMD_FLAG_AUTOSENSE) {
  esp->ops->unmap_single(esp, ent->sense_dma,
           SCSI_SENSE_BUFFERSIZE, DMA_FROM_DEVICE);
  ent->sense_ptr = ((void*)0);
 }

 cmd->scsi_done(cmd);
 list_del(&ent->list);
 esp_put_ent(esp, ent);
}
