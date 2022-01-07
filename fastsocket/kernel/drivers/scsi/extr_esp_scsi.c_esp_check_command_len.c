
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int cmd_len; } ;
struct esp {int flags; } ;


 int ESP_FLAG_DOING_SLOWCMD ;

__attribute__((used)) static void esp_check_command_len(struct esp *esp, struct scsi_cmnd *cmd)
{
 if (cmd->cmd_len == 6 ||
     cmd->cmd_len == 10 ||
     cmd->cmd_len == 12) {
  esp->flags &= ~ESP_FLAG_DOING_SLOWCMD;
 } else {
  esp->flags |= ESP_FLAG_DOING_SLOWCMD;
 }
}
