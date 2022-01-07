
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MCFGPIO_PCLRR_TIMER ;
 int MCFGPIO_PDDR_TIMER ;
 int MCF_GPIO_PAR_TIMER ;
 int MCF_GPIO_PAR_UART ;
 int MCF_GPIO_PAR_UART_PAR_URXD0 ;
 int MCF_GPIO_PAR_UART_PAR_UTXD0 ;
 int __raw_writeb (int,int ) ;

void gpio_init(void)
{

 MCF_GPIO_PAR_UART = ( 0
  | MCF_GPIO_PAR_UART_PAR_URXD0
  | MCF_GPIO_PAR_UART_PAR_UTXD0);



 MCF_GPIO_PAR_TIMER = 0x00;
 __raw_writeb(0x08, MCFGPIO_PDDR_TIMER);
 __raw_writeb(0x00, MCFGPIO_PCLRR_TIMER);

}
