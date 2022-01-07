
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {scalar_t__ sense_buffer; } ;
struct esp_cmd_priv {scalar_t__ cur_residue; int cur_sg; } ;
struct esp_cmd_entry {int flags; scalar_t__ sense_ptr; scalar_t__ sense_dma; } ;
typedef scalar_t__ dma_addr_t ;


 int ESP_CMD_FLAG_AUTOSENSE ;
 struct esp_cmd_priv* ESP_CMD_PRIV (struct scsi_cmnd*) ;
 scalar_t__ sg_dma_address (int ) ;
 scalar_t__ sg_dma_len (int ) ;

__attribute__((used)) static dma_addr_t esp_cur_dma_addr(struct esp_cmd_entry *ent,
       struct scsi_cmnd *cmd)
{
 struct esp_cmd_priv *p = ESP_CMD_PRIV(cmd);

 if (ent->flags & ESP_CMD_FLAG_AUTOSENSE) {
  return ent->sense_dma +
   (ent->sense_ptr - cmd->sense_buffer);
 }

 return sg_dma_address(p->cur_sg) +
  (sg_dma_len(p->cur_sg) -
   p->cur_residue);
}
