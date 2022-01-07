
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucb1400_ts {int ac97; } ;


 int UCB_ADC_INP_TSPY ;
 int UCB_TS_CR ;
 int UCB_TS_CR_BIAS_ENA ;
 int UCB_TS_CR_MODE_PRES ;
 int UCB_TS_CR_TSMX_POW ;
 int UCB_TS_CR_TSMY_GND ;
 int UCB_TS_CR_TSPX_POW ;
 int UCB_TS_CR_TSPY_GND ;
 int adcsync ;
 int ts_delay_pressure ;
 unsigned int ucb1400_adc_read (int ,int ,int ) ;
 int ucb1400_reg_write (int ,int ,int) ;
 int udelay (int ) ;

__attribute__((used)) static inline unsigned int ucb1400_ts_read_pressure(struct ucb1400_ts *ucb)
{
 ucb1400_reg_write(ucb->ac97, UCB_TS_CR,
   UCB_TS_CR_TSMX_POW | UCB_TS_CR_TSPX_POW |
   UCB_TS_CR_TSMY_GND | UCB_TS_CR_TSPY_GND |
   UCB_TS_CR_MODE_PRES | UCB_TS_CR_BIAS_ENA);
 udelay(ts_delay_pressure);
 return ucb1400_adc_read(ucb->ac97, UCB_ADC_INP_TSPY, adcsync);
}
