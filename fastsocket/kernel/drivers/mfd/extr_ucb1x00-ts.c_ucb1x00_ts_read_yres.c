
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucb1x00_ts {int adcsync; int ucb; } ;


 int UCB_TS_CR ;
 int UCB_TS_CR_BIAS_ENA ;
 int UCB_TS_CR_MODE_PRES ;
 int UCB_TS_CR_TSMY_GND ;
 int UCB_TS_CR_TSPY_POW ;
 unsigned int ucb1x00_adc_read (int ,int ,int ) ;
 int ucb1x00_reg_write (int ,int ,int) ;

__attribute__((used)) static inline unsigned int ucb1x00_ts_read_yres(struct ucb1x00_ts *ts)
{
 ucb1x00_reg_write(ts->ucb, UCB_TS_CR,
   UCB_TS_CR_TSMY_GND | UCB_TS_CR_TSPY_POW |
   UCB_TS_CR_MODE_PRES | UCB_TS_CR_BIAS_ENA);
 return ucb1x00_adc_read(ts->ucb, 0, ts->adcsync);
}
