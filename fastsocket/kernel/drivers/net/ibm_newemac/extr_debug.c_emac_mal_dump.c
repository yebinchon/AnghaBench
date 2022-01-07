
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mal_instance {int num_tx_chans; int num_rx_chans; TYPE_2__* ofdev; } ;
struct TYPE_4__ {TYPE_1__* node; } ;
struct TYPE_3__ {int full_name; } ;


 int MAL_CFG ;
 int MAL_ESR ;
 int MAL_IER ;
 int MAL_RCBS (int) ;
 int MAL_RXCARR ;
 int MAL_RXCASR ;
 int MAL_RXCTPR (int) ;
 int MAL_RXDEIR ;
 int MAL_RXEOBISR ;
 int MAL_TXCARR ;
 int MAL_TXCASR ;
 int MAL_TXCTPR (int) ;
 int MAL_TXDEIR ;
 int MAL_TXEOBISR ;
 int get_mal_dcrn (struct mal_instance*,int ) ;
 int printk (char*,...) ;

__attribute__((used)) static void emac_mal_dump(struct mal_instance *mal)
{
 int i;

 printk("** MAL %s Registers **\n"
        "CFG = 0x%08x ESR = 0x%08x IER = 0x%08x\n"
        "TX|CASR = 0x%08x CARR = 0x%08x EOBISR = 0x%08x DEIR = 0x%08x\n"
        "RX|CASR = 0x%08x CARR = 0x%08x EOBISR = 0x%08x DEIR = 0x%08x\n",
        mal->ofdev->node->full_name,
        get_mal_dcrn(mal, MAL_CFG), get_mal_dcrn(mal, MAL_ESR),
        get_mal_dcrn(mal, MAL_IER),
        get_mal_dcrn(mal, MAL_TXCASR), get_mal_dcrn(mal, MAL_TXCARR),
        get_mal_dcrn(mal, MAL_TXEOBISR), get_mal_dcrn(mal, MAL_TXDEIR),
        get_mal_dcrn(mal, MAL_RXCASR), get_mal_dcrn(mal, MAL_RXCARR),
        get_mal_dcrn(mal, MAL_RXEOBISR), get_mal_dcrn(mal, MAL_RXDEIR)
     );

 printk("TX|");
 for (i = 0; i < mal->num_tx_chans; ++i) {
  if (i && !(i % 4))
   printk("\n   ");
  printk("CTP%d = 0x%08x ", i, get_mal_dcrn(mal, MAL_TXCTPR(i)));
 }
 printk("\nRX|");
 for (i = 0; i < mal->num_rx_chans; ++i) {
  if (i && !(i % 4))
   printk("\n   ");
  printk("CTP%d = 0x%08x ", i, get_mal_dcrn(mal, MAL_RXCTPR(i)));
 }
 printk("\n   ");
 for (i = 0; i < mal->num_rx_chans; ++i) {
  u32 r = get_mal_dcrn(mal, MAL_RCBS(i));
  if (i && !(i % 3))
   printk("\n   ");
  printk("RCBS%d = 0x%08x (%d) ", i, r, r * 16);
 }
 printk("\n");
}
