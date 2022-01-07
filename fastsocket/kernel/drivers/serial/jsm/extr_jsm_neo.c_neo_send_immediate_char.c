
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct jsm_channel {int ch_bd; TYPE_1__* ch_neo_uart; } ;
struct TYPE_2__ {int txrx; } ;


 int neo_pci_posting_flush (int ) ;
 int writeb (unsigned char,int *) ;

__attribute__((used)) static void neo_send_immediate_char(struct jsm_channel *ch, unsigned char c)
{
 if (!ch)
  return;

 writeb(c, &ch->ch_neo_uart->txrx);


 neo_pci_posting_flush(ch->ch_bd);
}
