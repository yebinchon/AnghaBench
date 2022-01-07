
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct jsm_channel {int ch_mostat; TYPE_1__* ch_neo_uart; int ch_flags; } ;
struct TYPE_2__ {int mcr; int msr; int lsr; int isr_fcr; int txrx; int efr; int ier; } ;


 int CH_FIFO_ENABLED ;
 int UART_EFR_ECB ;
 int UART_FCR_CLEAR_RCVR ;
 int UART_FCR_CLEAR_XMIT ;
 int UART_FCR_ENABLE_FIFO ;
 int readb (int *) ;
 int writeb (int,int *) ;

__attribute__((used)) static void neo_uart_init(struct jsm_channel *ch)
{
 writeb(0, &ch->ch_neo_uart->ier);
 writeb(0, &ch->ch_neo_uart->efr);
 writeb(UART_EFR_ECB, &ch->ch_neo_uart->efr);


 readb(&ch->ch_neo_uart->txrx);
 writeb((UART_FCR_ENABLE_FIFO|UART_FCR_CLEAR_RCVR|UART_FCR_CLEAR_XMIT), &ch->ch_neo_uart->isr_fcr);
 readb(&ch->ch_neo_uart->lsr);
 readb(&ch->ch_neo_uart->msr);

 ch->ch_flags |= CH_FIFO_ENABLED;


 writeb(ch->ch_mostat, &ch->ch_neo_uart->mcr);
}
