
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int ESP_STATUS ;
 int ESP_STAT_INTR ;
 int IRQ_HANDLED ;
 scalar_t__* esp_chips ;
 int mac_esp_read8 (scalar_t__,int ) ;
 int scsi_esp_intr (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t mac_scsi_esp_intr(int irq, void *dev_id)
{
 int got_intr;






 do {
  got_intr = 0;
  if (esp_chips[0] &&
      (mac_esp_read8(esp_chips[0], ESP_STATUS) & ESP_STAT_INTR)) {
   (void)scsi_esp_intr(irq, esp_chips[0]);
   got_intr = 1;
  }
  if (esp_chips[1] &&
      (mac_esp_read8(esp_chips[1], ESP_STATUS) & ESP_STAT_INTR)) {
   (void)scsi_esp_intr(irq, esp_chips[1]);
   got_intr = 1;
  }
 } while (got_intr);

 return IRQ_HANDLED;
}
