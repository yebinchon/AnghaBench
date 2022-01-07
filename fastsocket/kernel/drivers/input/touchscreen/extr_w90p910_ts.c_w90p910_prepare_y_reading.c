
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w90p910_ts {int state; scalar_t__ ts_reg; } ;


 unsigned long ADC_CONV ;
 unsigned long ADC_INT ;
 unsigned long ADC_INT_EN ;
 unsigned long ADC_SEMIAUTO ;
 unsigned long ADC_TSC_Y ;
 unsigned long ADC_WAITTRIG ;
 int TS_WAIT_Y_COORD ;
 unsigned long WT_INT_EN ;
 unsigned long __raw_readl (scalar_t__) ;
 int __raw_writel (unsigned long,scalar_t__) ;

__attribute__((used)) static void w90p910_prepare_y_reading(struct w90p910_ts *w90p910_ts)
{
 unsigned long ctlreg;

 __raw_writel(ADC_TSC_Y, w90p910_ts->ts_reg + 0x04);
 ctlreg = __raw_readl(w90p910_ts->ts_reg);
 ctlreg &= ~(ADC_WAITTRIG | ADC_INT | WT_INT_EN);
 ctlreg |= ADC_SEMIAUTO | ADC_INT_EN | ADC_CONV;
 __raw_writel(ctlreg, w90p910_ts->ts_reg);

 w90p910_ts->state = TS_WAIT_Y_COORD;
}
