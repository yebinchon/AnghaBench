
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int IER; } ;
struct TYPE_4__ {TYPE_1__ elsa; } ;
struct IsdnCardState {TYPE_2__ hw; } ;


 int BASE_BAUD ;
 int UART_DLL ;
 int UART_DLM ;
 int UART_FCR ;
 unsigned int UART_FCR_ENABLE_FIFO ;
 unsigned int UART_FCR_TRIGGER_1 ;
 unsigned int UART_FCR_TRIGGER_8 ;
 int UART_IER ;
 unsigned int UART_IER_MSI ;
 int UART_LCR ;
 unsigned int UART_LCR_DLAB ;
 int UART_RX ;
 int debugl1 (struct IsdnCardState*,char*,int) ;
 int serial_inp (struct IsdnCardState*,int ) ;
 int serial_outp (struct IsdnCardState*,int ,unsigned int) ;

__attribute__((used)) static void change_speed(struct IsdnCardState *cs, int baud)
{
 int quot = 0, baud_base;
 unsigned cval, fcr = 0;
 int bits;



 cval = 0x03; bits = 10;

 baud_base = BASE_BAUD;
 quot = baud_base / baud;

 if (!quot)
  quot = baud_base / 9600;


 if ((baud_base / quot) < 2400)
  fcr = UART_FCR_ENABLE_FIFO | UART_FCR_TRIGGER_1;
 else
  fcr = UART_FCR_ENABLE_FIFO | UART_FCR_TRIGGER_8;
 serial_outp(cs, UART_FCR, fcr);

 cs->hw.elsa.IER &= ~UART_IER_MSI;
 cs->hw.elsa.IER |= UART_IER_MSI;
 serial_outp(cs, UART_IER, cs->hw.elsa.IER);

 debugl1(cs,"modem quot=0x%x", quot);
 serial_outp(cs, UART_LCR, cval | UART_LCR_DLAB);
 serial_outp(cs, UART_DLL, quot & 0xff);
 serial_outp(cs, UART_DLM, quot >> 8);
 serial_outp(cs, UART_LCR, cval);
 serial_inp(cs, UART_RX);
}
