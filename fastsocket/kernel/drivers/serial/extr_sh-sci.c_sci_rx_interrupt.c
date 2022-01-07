
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int sci_receive_chars (void*) ;

__attribute__((used)) static irqreturn_t sci_rx_interrupt(int irq, void *port)
{




 sci_receive_chars(port);

 return IRQ_HANDLED;
}
