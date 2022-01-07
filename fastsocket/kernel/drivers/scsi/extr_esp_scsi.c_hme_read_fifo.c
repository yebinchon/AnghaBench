
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esp {int* fifo; int sreg2; int fifo_cnt; } ;


 int ESP_CMD_FLUSH ;
 int ESP_FDATA ;
 int ESP_FFLAGS ;
 int ESP_FF_FBYTES ;
 int ESP_STAT2_F1BYTE ;
 int esp_read8 (int ) ;
 int esp_write8 (int ,int ) ;
 int scsi_esp_cmd (struct esp*,int ) ;

__attribute__((used)) static void hme_read_fifo(struct esp *esp)
{
 int fcnt = esp_read8(ESP_FFLAGS) & ESP_FF_FBYTES;
 int idx = 0;

 while (fcnt--) {
  esp->fifo[idx++] = esp_read8(ESP_FDATA);
  esp->fifo[idx++] = esp_read8(ESP_FDATA);
 }
 if (esp->sreg2 & ESP_STAT2_F1BYTE) {
  esp_write8(0, ESP_FDATA);
  esp->fifo[idx++] = esp_read8(ESP_FDATA);
  scsi_esp_cmd(esp, ESP_CMD_FLUSH);
 }
 esp->fifo_cnt = idx;
}
