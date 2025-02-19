
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct jsm_channel {int ch_c_iflag; int ch_t_tlevel; int ch_r_tlevel; TYPE_2__* ch_neo_uart; scalar_t__ ch_r_watermark; TYPE_1__* ch_bd; } ;
struct TYPE_4__ {int ier; int rfifo; int tfifo; int fctr; int efr; } ;
struct TYPE_3__ {int pci_dev; } ;


 int INFO ;
 int IXON ;
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

__attribute__((used)) static void neo_set_no_input_flow_control(struct jsm_channel *ch)
{
 u8 ier, efr;
 ier = readb(&ch->ch_neo_uart->ier);
 efr = readb(&ch->ch_neo_uart->efr);

 jsm_printk(PARAM, INFO, &ch->ch_bd->pci_dev, "Unsetting Input FLOW\n");


 ier &= ~(UART_17158_IER_RTSDTR);
 efr &= ~(UART_17158_EFR_RTSDTR);


 ier &= ~(UART_17158_IER_XOFF);
 if (ch->ch_c_iflag & IXON)
  efr &= ~(UART_17158_EFR_IXOFF);
 else
  efr &= ~(UART_17158_EFR_ECB | UART_17158_EFR_IXOFF);


 writeb(0, &ch->ch_neo_uart->efr);


 writeb(efr, &ch->ch_neo_uart->efr);


 writeb((UART_17158_FCTR_TRGD | UART_17158_FCTR_RTS_8DELAY), &ch->ch_neo_uart->fctr);

 ch->ch_r_watermark = 0;

 writeb(16, &ch->ch_neo_uart->tfifo);
 ch->ch_t_tlevel = 16;

 writeb(16, &ch->ch_neo_uart->rfifo);
 ch->ch_r_tlevel = 16;

 writeb(ier, &ch->ch_neo_uart->ier);
}
