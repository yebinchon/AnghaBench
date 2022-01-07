
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct esp {int config1; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* reset_dma ) (struct esp*) ;} ;


 int ESP_CFG1 ;
 int ESP_CMD_RS ;
 int ESP_CONFIG1_SRRDISAB ;
 int ESP_INTRPT ;
 int esp_read8 (int ) ;
 int esp_reset_esp (struct esp*) ;
 int esp_write8 (int ,int ) ;
 int scsi_esp_cmd (struct esp*,int ) ;
 int stub1 (struct esp*) ;
 int udelay (int) ;

__attribute__((used)) static void esp_bootup_reset(struct esp *esp)
{
 u8 val;


 esp->ops->reset_dma(esp);


 esp_reset_esp(esp);


 val = esp_read8(ESP_CFG1);
 val |= ESP_CONFIG1_SRRDISAB;
 esp_write8(val, ESP_CFG1);

 scsi_esp_cmd(esp, ESP_CMD_RS);
 udelay(400);

 esp_write8(esp->config1, ESP_CFG1);


 esp_read8(ESP_INTRPT);
}
