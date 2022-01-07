
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucb1x00_ts {int adcsync; int ucb; } ;


 int COLLIE_TC35143_GPIO_TBL_CHK ;
 int UCB_ADC_INP_TSPY ;
 int UCB_TS_CR ;
 int UCB_TS_CR_BIAS_ENA ;
 int UCB_TS_CR_MODE_POS ;
 int UCB_TS_CR_MODE_PRES ;
 int UCB_TS_CR_TSMX_GND ;
 int UCB_TS_CR_TSPX_POW ;
 scalar_t__ machine_is_collie () ;
 unsigned int ucb1x00_adc_read (int ,int ,int ) ;
 int ucb1x00_io_write (int ,int ,int ) ;
 int ucb1x00_reg_write (int ,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static inline unsigned int ucb1x00_ts_read_xpos(struct ucb1x00_ts *ts)
{
 if (machine_is_collie())
  ucb1x00_io_write(ts->ucb, 0, COLLIE_TC35143_GPIO_TBL_CHK);
 else {
  ucb1x00_reg_write(ts->ucb, UCB_TS_CR,
      UCB_TS_CR_TSMX_GND | UCB_TS_CR_TSPX_POW |
      UCB_TS_CR_MODE_PRES | UCB_TS_CR_BIAS_ENA);
  ucb1x00_reg_write(ts->ucb, UCB_TS_CR,
      UCB_TS_CR_TSMX_GND | UCB_TS_CR_TSPX_POW |
      UCB_TS_CR_MODE_PRES | UCB_TS_CR_BIAS_ENA);
 }
 ucb1x00_reg_write(ts->ucb, UCB_TS_CR,
   UCB_TS_CR_TSMX_GND | UCB_TS_CR_TSPX_POW |
   UCB_TS_CR_MODE_POS | UCB_TS_CR_BIAS_ENA);

 udelay(55);

 return ucb1x00_adc_read(ts->ucb, UCB_ADC_INP_TSPY, ts->adcsync);
}
