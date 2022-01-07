
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int sport_uart_tx_chars (void*) ;

__attribute__((used)) static irqreturn_t sport_uart_tx_irq(int irq, void *dev_id)
{
 sport_uart_tx_chars(dev_id);

 return IRQ_HANDLED;
}
