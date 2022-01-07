
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct esp {int rev; int max_period; int ccycle; int min_period; int config1; int config2; int prev_cfg3; int scsi_id; int radelay; int flags; int cfact; int prev_stp; int prev_soff; int neg_defp; TYPE_1__* target; } ;
struct TYPE_2__ {int esp_config3; } ;





 int ESP_CFACT ;
 int ESP_CFG1 ;
 int ESP_CFG2 ;
 int ESP_CFG3 ;
 int ESP_CMD_DMA ;
 int ESP_CMD_NULL ;
 int ESP_CMD_RC ;
 int ESP_CONFIG2_FENAB ;
 int ESP_CONFIG2_HME32 ;
 int ESP_CONFIG2_HMEFENAB ;
 int ESP_CONFIG3_FCLK ;
 int ESP_CONFIG3_FCLOCK ;
 int ESP_CONFIG3_IDBIT3 ;
 int ESP_CONFIG3_OBPUSH ;
 int ESP_FLAG_DIFFERENTIAL ;
 int ESP_INTRPT ;
 int ESP_SOFF ;
 int ESP_STP ;
 int ESP_TIMEO ;
 int ESP_UID ;



 int FAST ;
 int esp_read8 (int ) ;
 int esp_set_all_config3 (struct esp*,int) ;
 int esp_write8 (int,int ) ;
 int scsi_esp_cmd (struct esp*,int) ;
 int udelay (int) ;

__attribute__((used)) static void esp_reset_esp(struct esp *esp)
{
 u8 family_code, version;


 scsi_esp_cmd(esp, ESP_CMD_RC);
 scsi_esp_cmd(esp, ESP_CMD_NULL | ESP_CMD_DMA);
 if (esp->rev == FAST)
  esp_write8(ESP_CONFIG2_FENAB, ESP_CFG2);
 scsi_esp_cmd(esp, ESP_CMD_NULL | ESP_CMD_DMA);




 esp->max_period = ((35 * esp->ccycle) / 1000);
 if (esp->rev == FAST) {
  version = esp_read8(ESP_UID);
  family_code = (version & 0xf8) >> 3;
  if (family_code == 0x02)
   esp->rev = 129;
  else if (family_code == 0x0a)
   esp->rev = 128;
  else
   esp->rev = 130;
  esp->min_period = ((4 * esp->ccycle) / 1000);
 } else {
  esp->min_period = ((5 * esp->ccycle) / 1000);
 }
 esp->max_period = (esp->max_period + 3)>>2;
 esp->min_period = (esp->min_period + 3)>>2;

 esp_write8(esp->config1, ESP_CFG1);
 switch (esp->rev) {
 case 133:

  break;

 case 132:
  esp_write8(esp->config2, ESP_CFG2);
  break;

 case 131:

  esp_write8(esp->config2, ESP_CFG2);
  esp->prev_cfg3 = esp->target[0].esp_config3;
  esp_write8(esp->prev_cfg3, ESP_CFG3);
  break;

 case 128:
  esp->config2 |= (ESP_CONFIG2_HME32 | ESP_CONFIG2_HMEFENAB);


 case 129:

  esp_write8(esp->config2, ESP_CFG2);
  if (esp->rev == 128) {
   u8 cfg3 = esp->target[0].esp_config3;

   cfg3 |= ESP_CONFIG3_FCLOCK | ESP_CONFIG3_OBPUSH;
   if (esp->scsi_id >= 8)
    cfg3 |= ESP_CONFIG3_IDBIT3;
   esp_set_all_config3(esp, cfg3);
  } else {
   u32 cfg3 = esp->target[0].esp_config3;

   cfg3 |= ESP_CONFIG3_FCLK;
   esp_set_all_config3(esp, cfg3);
  }
  esp->prev_cfg3 = esp->target[0].esp_config3;
  esp_write8(esp->prev_cfg3, ESP_CFG3);
  if (esp->rev == 128) {
   esp->radelay = 80;
  } else {
   if (esp->flags & ESP_FLAG_DIFFERENTIAL)
    esp->radelay = 0;
   else
    esp->radelay = 96;
  }
  break;

 case 130:

  esp_write8(esp->config2, ESP_CFG2);
  esp_set_all_config3(esp,
        (esp->target[0].esp_config3 |
         ESP_CONFIG3_FCLOCK));
  esp->prev_cfg3 = esp->target[0].esp_config3;
  esp_write8(esp->prev_cfg3, ESP_CFG3);
  esp->radelay = 32;
  break;

 default:
  break;
 }


 esp_write8(esp->cfact, ESP_CFACT);

 esp->prev_stp = 0;
 esp_write8(esp->prev_stp, ESP_STP);

 esp->prev_soff = 0;
 esp_write8(esp->prev_soff, ESP_SOFF);

 esp_write8(esp->neg_defp, ESP_TIMEO);


 esp_read8(ESP_INTRPT);
 udelay(100);
}
