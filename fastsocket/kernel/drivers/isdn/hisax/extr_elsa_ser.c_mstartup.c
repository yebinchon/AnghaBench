
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int MCR; int IER; int MFlag; scalar_t__ rcvp; scalar_t__ rcvcnt; scalar_t__ transp; scalar_t__ transcnt; } ;
struct TYPE_4__ {TYPE_1__ elsa; } ;
struct IsdnCardState {TYPE_2__ hw; } ;


 int BASE_BAUD ;
 int ENODEV ;
 int UART_FCR ;
 int UART_FCR_CLEAR_RCVR ;
 int UART_FCR_CLEAR_XMIT ;
 int UART_IER ;
 int UART_IER_MSI ;
 int UART_IER_RDI ;
 int UART_IER_RLSI ;
 int UART_IIR ;
 int UART_LCR ;
 int UART_LCR_WLEN8 ;
 int UART_LSR ;
 int UART_MCR ;
 int UART_MCR_DTR ;
 int UART_MCR_OUT2 ;
 int UART_MCR_RTS ;
 int UART_MSR ;
 int UART_RX ;
 int change_speed (struct IsdnCardState*,int ) ;
 int serial_inp (struct IsdnCardState*,int ) ;
 int serial_outp (struct IsdnCardState*,int ,int) ;

__attribute__((used)) static int mstartup(struct IsdnCardState *cs)
{
 int retval=0;





 serial_outp(cs, UART_FCR, (UART_FCR_CLEAR_RCVR | UART_FCR_CLEAR_XMIT));






 if (serial_inp(cs, UART_LSR) == 0xff) {
  retval = -ENODEV;
  goto errout;
 }




 (void) serial_inp(cs, UART_RX);
 (void) serial_inp(cs, UART_IIR);
 (void) serial_inp(cs, UART_MSR);




 serial_outp(cs, UART_LCR, UART_LCR_WLEN8);

 cs->hw.elsa.MCR = 0;
 cs->hw.elsa.MCR = UART_MCR_DTR | UART_MCR_RTS | UART_MCR_OUT2;
 serial_outp(cs, UART_MCR, cs->hw.elsa.MCR);




 cs->hw.elsa.IER = UART_IER_MSI | UART_IER_RLSI | UART_IER_RDI;
 serial_outp(cs, UART_IER, cs->hw.elsa.IER);




 (void)serial_inp(cs, UART_LSR);
 (void)serial_inp(cs, UART_RX);
 (void)serial_inp(cs, UART_IIR);
 (void)serial_inp(cs, UART_MSR);

 cs->hw.elsa.transcnt = cs->hw.elsa.transp = 0;
 cs->hw.elsa.rcvcnt = cs->hw.elsa.rcvp =0;




 change_speed(cs, BASE_BAUD);
 cs->hw.elsa.MFlag = 1;
errout:
 return retval;
}
