
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct esp {scalar_t__ prev_soff; scalar_t__ prev_stp; TYPE_1__* target; } ;
struct TYPE_2__ {scalar_t__ esp_offset; scalar_t__ esp_period; } ;


 int ESP_SOFF ;
 int ESP_STP ;
 int esp_write8 (scalar_t__,int ) ;

__attribute__((used)) static void esp_write_tgt_sync(struct esp *esp, int tgt)
{
 u8 off = esp->target[tgt].esp_offset;
 u8 per = esp->target[tgt].esp_period;

 if (off != esp->prev_soff) {
  esp->prev_soff = off;
  esp_write8(off, ESP_SOFF);
 }
 if (per != esp->prev_stp) {
  esp->prev_stp = per;
  esp_write8(per, ESP_STP);
 }
}
