
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {int sc_data_direction; } ;
struct TYPE_4__ {int num_sg; } ;
struct esp_cmd_priv {TYPE_2__ u; } ;
struct esp {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* unmap_sg ) (struct esp*,int ,int ,int) ;} ;


 int DMA_NONE ;
 struct esp_cmd_priv* ESP_CMD_PRIV (struct scsi_cmnd*) ;
 int scsi_sglist (struct scsi_cmnd*) ;
 int stub1 (struct esp*,int ,int ,int) ;

__attribute__((used)) static void esp_unmap_dma(struct esp *esp, struct scsi_cmnd *cmd)
{
 struct esp_cmd_priv *spriv = ESP_CMD_PRIV(cmd);
 int dir = cmd->sc_data_direction;

 if (dir == DMA_NONE)
  return;

 esp->ops->unmap_sg(esp, scsi_sglist(cmd), spriv->u.num_sg, dir);
}
