
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct work_struct {int dummy; } ;


 int ABS_X ;
 int ABS_Y ;
 int ADC_CHANNEL_TS_X ;
 int ADC_CHANNEL_TS_Y ;
 int BTN_TOUCH ;
 int HP680_TS_IRQ ;
 int PHDR ;
 int PHDR_TS_PEN_DOWN ;
 int SCPDR ;
 int SCPDR_TS_SCAN_ENABLE ;
 int SCPDR_TS_SCAN_X ;
 int SCPDR_TS_SCAN_Y ;
 int adc_single (int ) ;
 int ctrl_inb (int ) ;
 int ctrl_outb (int,int ) ;
 int enable_irq (int ) ;
 int hp680_ts_dev ;
 int input_report_abs (int ,int ,int) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;
 int udelay (int) ;

__attribute__((used)) static void do_softint(struct work_struct *work)
{
 int absx = 0, absy = 0;
 u8 scpdr;
 int touched = 0;

 if (ctrl_inb(PHDR) & PHDR_TS_PEN_DOWN) {
  scpdr = ctrl_inb(SCPDR);
  scpdr |= SCPDR_TS_SCAN_ENABLE;
  scpdr &= ~SCPDR_TS_SCAN_Y;
  ctrl_outb(scpdr, SCPDR);
  udelay(30);

  absy = adc_single(ADC_CHANNEL_TS_Y);

  scpdr = ctrl_inb(SCPDR);
  scpdr |= SCPDR_TS_SCAN_Y;
  scpdr &= ~SCPDR_TS_SCAN_X;
  ctrl_outb(scpdr, SCPDR);
  udelay(30);

  absx = adc_single(ADC_CHANNEL_TS_X);

  scpdr = ctrl_inb(SCPDR);
  scpdr |= SCPDR_TS_SCAN_X;
  scpdr &= ~SCPDR_TS_SCAN_ENABLE;
  ctrl_outb(scpdr, SCPDR);
  udelay(100);
  touched = ctrl_inb(PHDR) & PHDR_TS_PEN_DOWN;
 }

 if (touched) {
  input_report_key(hp680_ts_dev, BTN_TOUCH, 1);
  input_report_abs(hp680_ts_dev, ABS_X, absx);
  input_report_abs(hp680_ts_dev, ABS_Y, absy);
 } else {
  input_report_key(hp680_ts_dev, BTN_TOUCH, 0);
 }

 input_sync(hp680_ts_dev);
 enable_irq(HP680_TS_IRQ);
}
