
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct wm97xx {int input_dev; TYPE_1__* touch_dev; } ;
struct atmel_wm97xx {int x; int y; struct wm97xx* wm; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int AC97C_OVRUN ;
 int AC97C_RXRDY ;
 int BTN_TOUCH ;
 int CBRHR ;
 int CBSR ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int WM97XX_ADCSEL_PRES ;
 int WM97XX_ADCSEL_X ;
 int WM97XX_ADCSEL_Y ;
 int WM97XX_ADCSRC_MASK ;
 int WM97XX_PEN_DOWN ;
 int ac97c_readl (struct atmel_wm97xx*,int ) ;
 int dev_dbg (int *,char*) ;
 int input_report_abs (int ,int ,int) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;
 scalar_t__ pressure ;

__attribute__((used)) static irqreturn_t atmel_wm97xx_channel_b_interrupt(int irq, void *dev_id)
{
 struct atmel_wm97xx *atmel_wm97xx = dev_id;
 struct wm97xx *wm = atmel_wm97xx->wm;
 int status = ac97c_readl(atmel_wm97xx, CBSR);
 irqreturn_t retval = IRQ_NONE;

 if (status & AC97C_OVRUN) {
  dev_dbg(&wm->touch_dev->dev, "AC97C overrun\n");
  ac97c_readl(atmel_wm97xx, CBRHR);
  retval = IRQ_HANDLED;
 } else if (status & AC97C_RXRDY) {
  u16 data;
  u16 value;
  u16 source;
  u16 pen_down;

  data = ac97c_readl(atmel_wm97xx, CBRHR);
  value = data & 0x0fff;
  source = data & WM97XX_ADCSRC_MASK;
  pen_down = (data & WM97XX_PEN_DOWN) >> 8;

  if (source == WM97XX_ADCSEL_X)
   atmel_wm97xx->x = value;
  if (source == WM97XX_ADCSEL_Y)
   atmel_wm97xx->y = value;

  if (!pressure && source == WM97XX_ADCSEL_Y) {
   input_report_abs(wm->input_dev, ABS_X, atmel_wm97xx->x);
   input_report_abs(wm->input_dev, ABS_Y, atmel_wm97xx->y);
   input_report_key(wm->input_dev, BTN_TOUCH, pen_down);
   input_sync(wm->input_dev);
  } else if (pressure && source == WM97XX_ADCSEL_PRES) {
   input_report_abs(wm->input_dev, ABS_X, atmel_wm97xx->x);
   input_report_abs(wm->input_dev, ABS_Y, atmel_wm97xx->y);
   input_report_abs(wm->input_dev, ABS_PRESSURE, value);
   input_report_key(wm->input_dev, BTN_TOUCH, value);
   input_sync(wm->input_dev);
  }

  retval = IRQ_HANDLED;
 }

 return retval;
}
