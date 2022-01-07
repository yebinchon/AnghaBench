
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {int host; } ;
struct scsi_cmnd {void (* scsi_done ) (struct scsi_cmnd*) ;struct scsi_device* device; } ;
struct TYPE_2__ {int dma_addr; } ;
struct esp_cmd_priv {TYPE_1__ u; } ;
struct esp_cmd_entry {int list; struct scsi_cmnd* cmd; } ;
struct esp {int queued_cmds; } ;
typedef int dma_addr_t ;


 struct esp_cmd_priv* ESP_CMD_PRIV (struct scsi_cmnd*) ;
 int SCSI_MLQUEUE_HOST_BUSY ;
 struct esp_cmd_entry* esp_get_ent (struct esp*) ;
 int esp_maybe_execute_command (struct esp*) ;
 int list_add_tail (int *,int *) ;
 struct esp* shost_priv (int ) ;

__attribute__((used)) static int esp_queuecommand(struct scsi_cmnd *cmd, void (*done)(struct scsi_cmnd *))
{
 struct scsi_device *dev = cmd->device;
 struct esp *esp = shost_priv(dev->host);
 struct esp_cmd_priv *spriv;
 struct esp_cmd_entry *ent;

 ent = esp_get_ent(esp);
 if (!ent)
  return SCSI_MLQUEUE_HOST_BUSY;

 ent->cmd = cmd;

 cmd->scsi_done = done;

 spriv = ESP_CMD_PRIV(cmd);
 spriv->u.dma_addr = ~(dma_addr_t)0x0;

 list_add_tail(&ent->list, &esp->queued_cmds);

 esp_maybe_execute_command(esp);

 return 0;
}
