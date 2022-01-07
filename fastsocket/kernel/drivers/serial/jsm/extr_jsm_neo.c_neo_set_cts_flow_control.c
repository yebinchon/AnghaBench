
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct jsm_channel {int ch_t_tlevel; TYPE_2__* ch_neo_uart; TYPE_1__* ch_bd; } ;
struct TYPE_4__ {int ier; int tfifo; int fctr; int efr; } ;
struct TYPE_3__ {int pci_dev; } ;


 int INFO ;
 int PARAM ;
 int UART_17158_EFR_CTSDSR ;
 int UART_17158_EFR_ECB ;
 int UART_17158_EFR_IXON ;
 int UART_17158_FCTR_RTS_4DELAY ;
 int UART_17158_FCTR_TRGD ;
 int UART_17158_IER_CTSDSR ;
 int jsm_printk (int ,int ,int *,char*) ;
 int readb (int *) ;
 int writeb (int,int *) ;

__attribute__((used)) static void neo_set_cts_flow_control(struct jsm_channel *ch)
{
 u8 ier, efr;
 ier = readb(&ch->ch_neo_uart->ier);
 efr = readb(&ch->ch_neo_uart->efr);

 jsm_printk(PARAM, INFO, &ch->ch_bd->pci_dev, "Setting CTSFLOW\n");


 ier |= (UART_17158_IER_CTSDSR);
 efr |= (UART_17158_EFR_ECB | UART_17158_EFR_CTSDSR);


 efr &= ~(UART_17158_EFR_IXON);


 writeb(0, &ch->ch_neo_uart->efr);


 writeb(efr, &ch->ch_neo_uart->efr);


 writeb((UART_17158_FCTR_TRGD | UART_17158_FCTR_RTS_4DELAY), &ch->ch_neo_uart->fctr);


 writeb(8, &ch->ch_neo_uart->tfifo);
 ch->ch_t_tlevel = 8;

 writeb(ier, &ch->ch_neo_uart->ier);
}
