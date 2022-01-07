
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct jsm_channel {int ch_bd; TYPE_1__* ch_neo_uart; } ;
struct TYPE_2__ {int ier; } ;


 int UART_IER_RDI ;
 int neo_pci_posting_flush (int ) ;
 int readb (int *) ;
 int writeb (int ,int *) ;

__attribute__((used)) static void neo_enable_receiver(struct jsm_channel *ch)
{
 u8 tmp = readb(&ch->ch_neo_uart->ier);
 tmp |= (UART_IER_RDI);
 writeb(tmp, &ch->ch_neo_uart->ier);


 neo_pci_posting_flush(ch->ch_bd);
}
