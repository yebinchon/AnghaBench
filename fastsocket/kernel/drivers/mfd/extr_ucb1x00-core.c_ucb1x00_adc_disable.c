
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucb1x00 {int adc_sem; int adc_cr; } ;


 int UCB_ADC_CR ;
 int UCB_ADC_ENA ;
 int ucb1x00_disable (struct ucb1x00*) ;
 int ucb1x00_reg_write (struct ucb1x00*,int ,int ) ;
 int up (int *) ;

void ucb1x00_adc_disable(struct ucb1x00 *ucb)
{
 ucb->adc_cr &= ~UCB_ADC_ENA;
 ucb1x00_reg_write(ucb, UCB_ADC_CR, ucb->adc_cr);
 ucb1x00_disable(ucb);

 up(&ucb->adc_sem);
}
