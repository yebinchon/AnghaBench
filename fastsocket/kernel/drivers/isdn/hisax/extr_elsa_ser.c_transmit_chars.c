
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ transp; scalar_t__ transcnt; int MFlag; int IER; int bcs; int * transbuf; } ;
struct TYPE_4__ {TYPE_1__ elsa; } ;
struct IsdnCardState {TYPE_2__ hw; } ;


 scalar_t__ MAX_MODEM_BUF ;
 int UART_IER ;
 int UART_IER_THRI ;
 int UART_TX ;
 scalar_t__ WAKEUP_CHARS ;
 int debugl1 (struct IsdnCardState*,char*,scalar_t__,scalar_t__) ;
 int modem_fill (int ) ;
 int printk (char*) ;
 int serial_out (struct IsdnCardState*,int ,int ) ;
 int serial_outp (struct IsdnCardState*,int ,int ) ;

__attribute__((used)) static inline void transmit_chars(struct IsdnCardState *cs, int *intr_done)
{
 int count;

 debugl1(cs, "transmit_chars: p(%x) cnt(%x)", cs->hw.elsa.transp,
  cs->hw.elsa.transcnt);

 if (cs->hw.elsa.transcnt <= 0) {
  cs->hw.elsa.IER &= ~UART_IER_THRI;
  serial_out(cs, UART_IER, cs->hw.elsa.IER);
  return;
 }
 count = 16;
 do {
  serial_outp(cs, UART_TX, cs->hw.elsa.transbuf[cs->hw.elsa.transp++]);
  if (cs->hw.elsa.transp >= MAX_MODEM_BUF)
   cs->hw.elsa.transp=0;
  if (--cs->hw.elsa.transcnt <= 0)
   break;
 } while (--count > 0);
 if ((cs->hw.elsa.transcnt < WAKEUP_CHARS) && (cs->hw.elsa.MFlag==2))
  modem_fill(cs->hw.elsa.bcs);




 if (intr_done)
  *intr_done = 0;
 if (cs->hw.elsa.transcnt <= 0) {
  cs->hw.elsa.IER &= ~UART_IER_THRI;
  serial_outp(cs, UART_IER, cs->hw.elsa.IER);
 }
}
