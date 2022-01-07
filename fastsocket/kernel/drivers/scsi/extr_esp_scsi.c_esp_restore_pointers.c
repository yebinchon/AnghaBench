
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;
struct esp_cmd_priv {int tot_residue; int cur_sg; int cur_residue; } ;
struct esp_cmd_entry {int flags; int saved_tot_residue; int saved_cur_sg; int saved_cur_residue; int saved_sense_ptr; int sense_ptr; struct scsi_cmnd* cmd; } ;
struct esp {int dummy; } ;


 int ESP_CMD_FLAG_AUTOSENSE ;
 struct esp_cmd_priv* ESP_CMD_PRIV (struct scsi_cmnd*) ;

__attribute__((used)) static void esp_restore_pointers(struct esp *esp, struct esp_cmd_entry *ent)
{
 struct scsi_cmnd *cmd = ent->cmd;
 struct esp_cmd_priv *spriv = ESP_CMD_PRIV(cmd);

 if (ent->flags & ESP_CMD_FLAG_AUTOSENSE) {
  ent->sense_ptr = ent->saved_sense_ptr;
  return;
 }
 spriv->cur_residue = ent->saved_cur_residue;
 spriv->cur_sg = ent->saved_cur_sg;
 spriv->tot_residue = ent->saved_tot_residue;
}
