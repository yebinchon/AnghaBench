
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct esp {int sreg; int flags; int ireg; scalar_t__ rev; scalar_t__ select_state; scalar_t__ event; int sreg2; scalar_t__ active_cmd; int seqreg; int * eh_reset; } ;


 int ESP_DIP ;
 int ESP_DOP ;
 scalar_t__ ESP_EVENT_DATA_DONE ;
 scalar_t__ ESP_EVENT_STATUS ;
 int ESP_FLAG_RESETTING ;
 int ESP_INTRPT ;
 int ESP_INTR_IC ;
 int ESP_INTR_RSEL ;
 int ESP_INTR_S ;
 int ESP_INTR_SATN ;
 int ESP_INTR_SR ;
 scalar_t__ ESP_SELECT_NONE ;
 int ESP_STAT2_F1BYTE ;
 int ESP_STAT2_FEMPTY ;
 int ESP_STATUS ;
 int ESP_STATUS2 ;
 int ESP_STAT_PMASK ;
 scalar_t__ FASHME ;
 int complete (int *) ;
 scalar_t__ esp_check_gross_error (struct esp*) ;
 int esp_check_spur_intr (struct esp*) ;
 int esp_dump_cmd_log (struct esp*) ;
 int esp_finish_select (struct esp*) ;
 int esp_log_intr (char*,int,int ,int,int) ;
 int esp_process_event (struct esp*) ;
 void* esp_read8 (int ) ;
 int esp_reconnect (struct esp*) ;
 int esp_reset_cleanup (struct esp*) ;
 int esp_schedule_reset (struct esp*) ;
 int hme_read_fifo (struct esp*) ;
 int printk (char*,int) ;

__attribute__((used)) static void __esp_interrupt(struct esp *esp)
{
 int finish_reset, intr_done;
 u8 phase;

 esp->sreg = esp_read8(ESP_STATUS);

 if (esp->flags & ESP_FLAG_RESETTING) {
  finish_reset = 1;
 } else {
  if (esp_check_gross_error(esp))
   return;

  finish_reset = esp_check_spur_intr(esp);
  if (finish_reset < 0)
   return;
 }

 esp->ireg = esp_read8(ESP_INTRPT);

 if (esp->ireg & ESP_INTR_SR)
  finish_reset = 1;

 if (finish_reset) {
  esp_reset_cleanup(esp);
  if (esp->eh_reset) {
   complete(esp->eh_reset);
   esp->eh_reset = ((void*)0);
  }
  return;
 }

 phase = (esp->sreg & ESP_STAT_PMASK);
 if (esp->rev == FASHME) {
  if (((phase != ESP_DIP && phase != ESP_DOP) &&
       esp->select_state == ESP_SELECT_NONE &&
       esp->event != ESP_EVENT_STATUS &&
       esp->event != ESP_EVENT_DATA_DONE) ||
      (esp->ireg & ESP_INTR_RSEL)) {
   esp->sreg2 = esp_read8(ESP_STATUS2);
   if (!(esp->sreg2 & ESP_STAT2_FEMPTY) ||
       (esp->sreg2 & ESP_STAT2_F1BYTE))
    hme_read_fifo(esp);
  }
 }

 esp_log_intr("ESP: intr sreg[%02x] seqreg[%02x] "
       "sreg2[%02x] ireg[%02x]\n",
       esp->sreg, esp->seqreg, esp->sreg2, esp->ireg);

 intr_done = 0;

 if (esp->ireg & (ESP_INTR_S | ESP_INTR_SATN | ESP_INTR_IC)) {
  printk("ESP: unexpected IREG %02x\n", esp->ireg);
  if (esp->ireg & ESP_INTR_IC)
   esp_dump_cmd_log(esp);

  esp_schedule_reset(esp);
 } else {
  if (!(esp->ireg & ESP_INTR_RSEL)) {

   if (esp->select_state != ESP_SELECT_NONE)
    intr_done = esp_finish_select(esp);
  } else if (esp->ireg & ESP_INTR_RSEL) {
   if (esp->active_cmd)
    (void) esp_finish_select(esp);
   intr_done = esp_reconnect(esp);
  }
 }
 while (!intr_done)
  intr_done = esp_process_event(esp);
}
