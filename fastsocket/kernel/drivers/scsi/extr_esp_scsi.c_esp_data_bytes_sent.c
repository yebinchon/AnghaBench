
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scsi_cmnd {int dummy; } ;
struct esp_cmd_entry {int flags; } ;
struct esp {int prev_cfg3; int sreg; scalar_t__ rev; int data_dma_len; int prev_soff; } ;


 scalar_t__ ESP100 ;
 int ESP_CMD_FLAG_WRITE ;
 int ESP_CONFIG3_EWIDE ;
 int ESP_DIP ;
 int ESP_DOP ;
 int ESP_FFLAGS ;
 int ESP_FF_FBYTES ;
 int ESP_FF_ONOTZERO ;
 int ESP_STATUS ;
 int ESP_STAT_PMASK ;
 int ESP_STAT_TCNT ;
 int ESP_TCLOW ;
 int ESP_TCMED ;
 scalar_t__ FASHME ;
 int FAS_RLO ;
 int esp_flush_fifo (struct esp*) ;
 int esp_read8 (int ) ;

__attribute__((used)) static int esp_data_bytes_sent(struct esp *esp, struct esp_cmd_entry *ent,
          struct scsi_cmnd *cmd)
{
 int fifo_cnt, ecount, bytes_sent, flush_fifo;

 fifo_cnt = esp_read8(ESP_FFLAGS) & ESP_FF_FBYTES;
 if (esp->prev_cfg3 & ESP_CONFIG3_EWIDE)
  fifo_cnt <<= 1;

 ecount = 0;
 if (!(esp->sreg & ESP_STAT_TCNT)) {
  ecount = ((unsigned int)esp_read8(ESP_TCLOW) |
     (((unsigned int)esp_read8(ESP_TCMED)) << 8));
  if (esp->rev == FASHME)
   ecount |= ((unsigned int)esp_read8(FAS_RLO)) << 16;
 }

 bytes_sent = esp->data_dma_len;
 bytes_sent -= ecount;

 if (!(ent->flags & ESP_CMD_FLAG_WRITE))
  bytes_sent -= fifo_cnt;

 flush_fifo = 0;
 if (!esp->prev_soff) {

  flush_fifo = 1;
 } else {
  if (esp->rev == ESP100) {
   u32 fflags, phase;
   esp->sreg = esp_read8(ESP_STATUS);
   phase = esp->sreg & ESP_STAT_PMASK;
   fflags = esp_read8(ESP_FFLAGS);

   if ((phase == ESP_DOP &&
        (fflags & ESP_FF_ONOTZERO)) ||
       (phase == ESP_DIP &&
        (fflags & ESP_FF_FBYTES)))
    return -1;
  }
  if (!(ent->flags & ESP_CMD_FLAG_WRITE))
   flush_fifo = 1;
 }

 if (flush_fifo)
  esp_flush_fifo(esp);

 return bytes_sent;
}
