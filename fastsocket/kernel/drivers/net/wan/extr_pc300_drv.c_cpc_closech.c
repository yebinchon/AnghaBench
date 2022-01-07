
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ chan; } ;
typedef TYPE_2__ pc300dev_t ;
struct TYPE_10__ {int channel; int falc; scalar_t__ card; } ;
typedef TYPE_3__ pc300ch_t ;
struct TYPE_8__ {scalar_t__ type; scalar_t__ cpld_reg1; scalar_t__ falcbase; scalar_t__ cpld_reg2; scalar_t__ scabase; } ;
struct TYPE_11__ {TYPE_1__ hw; } ;
typedef TYPE_4__ pc300_t ;
typedef int falc_t ;


 int CMD ;
 int CMD_CH_RST ;
 int CPLD_REG1_FALC_RESET ;
 int CPLD_REG2_FALC_LED2 ;
 int CPLD_REG2_FALC_RX_CLK ;
 int CPLD_REG2_FALC_TX_CLK ;
 scalar_t__ M_REG (int ,int) ;
 scalar_t__ PC300_TE ;
 int cpc_readb (scalar_t__) ;
 int cpc_writeb (scalar_t__,int) ;
 int memset (int *,int ,int) ;
 int rx_dma_stop (TYPE_4__*,int) ;
 int tx_dma_stop (TYPE_4__*,int) ;
 int udelay (int) ;

__attribute__((used)) static void cpc_closech(pc300dev_t * d)
{
 pc300ch_t *chan = (pc300ch_t *) d->chan;
 pc300_t *card = (pc300_t *) chan->card;
 falc_t *pfalc = (falc_t *) & chan->falc;
 int ch = chan->channel;

 cpc_writeb(card->hw.scabase + M_REG(CMD, ch), CMD_CH_RST);
 rx_dma_stop(card, ch);
 tx_dma_stop(card, ch);

 if (card->hw.type == PC300_TE) {
  memset(pfalc, 0, sizeof(falc_t));
  cpc_writeb(card->hw.falcbase + card->hw.cpld_reg2,
      cpc_readb(card->hw.falcbase + card->hw.cpld_reg2) &
      ~((CPLD_REG2_FALC_TX_CLK | CPLD_REG2_FALC_RX_CLK |
         CPLD_REG2_FALC_LED2) << (2 * ch)));

  cpc_writeb(card->hw.falcbase + card->hw.cpld_reg1,
      cpc_readb(card->hw.falcbase + card->hw.cpld_reg1) |
      (CPLD_REG1_FALC_RESET << (2 * ch)));
  udelay(10000);
  cpc_writeb(card->hw.falcbase + card->hw.cpld_reg1,
      cpc_readb(card->hw.falcbase + card->hw.cpld_reg1) &
      ~(CPLD_REG1_FALC_RESET << (2 * ch)));
 }
}
