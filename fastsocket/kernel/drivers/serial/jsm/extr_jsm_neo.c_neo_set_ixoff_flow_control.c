
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct jsm_channel {int ch_t_tlevel; int ch_startc; int ch_stopc; TYPE_2__* ch_neo_uart; TYPE_1__* ch_bd; } ;
struct TYPE_4__ {int ier; int xoffchar2; int xoffchar1; int xonchar2; int xonchar1; int tfifo; int fctr; int efr; } ;
struct TYPE_3__ {int pci_dev; } ;


 int INFO ;
 int PARAM ;
 int UART_17158_EFR_ECB ;
 int UART_17158_EFR_IXOFF ;
 int UART_17158_EFR_RTSDTR ;
 int UART_17158_FCTR_RTS_8DELAY ;
 int UART_17158_FCTR_TRGD ;
 int UART_17158_IER_RTSDTR ;
 int UART_17158_IER_XOFF ;
 int jsm_printk (int ,int ,int *,char*) ;
 int readb (int *) ;
 int writeb (int,int *) ;

__attribute__((used)) static void neo_set_ixoff_flow_control(struct jsm_channel *ch)
{
 u8 ier, efr;
 ier = readb(&ch->ch_neo_uart->ier);
 efr = readb(&ch->ch_neo_uart->efr);

 jsm_printk(PARAM, INFO, &ch->ch_bd->pci_dev, "Setting IXOFF FLOW\n");


 ier &= ~(UART_17158_IER_RTSDTR);
 efr &= ~(UART_17158_EFR_RTSDTR);


 ier |= (UART_17158_IER_XOFF);
 efr |= (UART_17158_EFR_ECB | UART_17158_EFR_IXOFF);


 writeb(0, &ch->ch_neo_uart->efr);


 writeb(efr, &ch->ch_neo_uart->efr);


 writeb((UART_17158_FCTR_TRGD | UART_17158_FCTR_RTS_8DELAY), &ch->ch_neo_uart->fctr);

 writeb(8, &ch->ch_neo_uart->tfifo);
 ch->ch_t_tlevel = 8;


 writeb(ch->ch_startc, &ch->ch_neo_uart->xonchar1);
 writeb(0, &ch->ch_neo_uart->xonchar2);

 writeb(ch->ch_stopc, &ch->ch_neo_uart->xoffchar1);
 writeb(0, &ch->ch_neo_uart->xoffchar2);

 writeb(ier, &ch->ch_neo_uart->ier);
}
