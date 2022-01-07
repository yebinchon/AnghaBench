
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int* IXP4XX_GPIO_GPOUTR ;
 int * IXP4XX_OSST ;
 int IXP4XX_OSST_TIMER_2_PEND ;

__attribute__((used)) static irqreturn_t ixp4xx_spkr_interrupt(int irq, void *dev_id)
{

 *IXP4XX_OSST = IXP4XX_OSST_TIMER_2_PEND;


 *IXP4XX_GPIO_GPOUTR ^= (1 << (unsigned int) dev_id);

 return IRQ_HANDLED;
}
