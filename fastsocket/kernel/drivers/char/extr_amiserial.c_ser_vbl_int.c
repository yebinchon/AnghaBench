
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct async_struct {int IER; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 struct async_struct* IRQ_ports ;
 int UART_IER_MSI ;
 int check_modem_status (struct async_struct*) ;

__attribute__((used)) static irqreturn_t ser_vbl_int( int irq, void *data)
{

 struct async_struct * info = IRQ_ports;




 if(info->IER & UART_IER_MSI)
   check_modem_status(info);
 return IRQ_HANDLED;
}
