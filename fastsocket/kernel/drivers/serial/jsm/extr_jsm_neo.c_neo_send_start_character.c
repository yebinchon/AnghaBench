
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct jsm_channel {scalar_t__ ch_startc; int ch_bd; TYPE_1__* ch_neo_uart; int ch_xon_sends; } ;
struct TYPE_2__ {int txrx; } ;


 scalar_t__ __DISABLED_CHAR ;
 int neo_pci_posting_flush (int ) ;
 int writeb (scalar_t__,int *) ;

__attribute__((used)) static void neo_send_start_character(struct jsm_channel *ch)
{
 if (!ch)
  return;

 if (ch->ch_startc != __DISABLED_CHAR) {
  ch->ch_xon_sends++;
  writeb(ch->ch_startc, &ch->ch_neo_uart->txrx);


  neo_pci_posting_flush(ch->ch_bd);
 }
}
