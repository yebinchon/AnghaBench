
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __UART ;


 int DTR ;
 int FLOWCTL_CLEAR (int ) ;
 int FLOWCTL_SET (int ) ;
 int RTS ;
 int UART_FCR_CLEAR_RCVR ;
 int UART_FCR_CLEAR_XMIT ;
 int UART_FCR_ENABLE_FIFO ;
 int UART_FCR_TRIGGER_1 ;
 int UART_IER_RDI ;
 int UART_IER_RLSI ;
 int UART_LCR_WLEN8 ;
 int __UART_IRR_NMI ;
 int __set_IRR (int,int ) ;
 int mb () ;

void gdbstub_io_init(void)
{

 __UART(LCR) = UART_LCR_WLEN8;
 __UART(FCR) =
  UART_FCR_ENABLE_FIFO |
  UART_FCR_CLEAR_RCVR |
  UART_FCR_CLEAR_XMIT |
  UART_FCR_TRIGGER_1;

 FLOWCTL_CLEAR(DTR);
 FLOWCTL_SET(RTS);




 __UART(IER) = UART_IER_RDI | UART_IER_RLSI;
 mb();

 __set_IRR(6, __UART_IRR_NMI);

}
