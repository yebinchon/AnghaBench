
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spider_net_card {int dummy; } ;


 scalar_t__ SPIDER_NET_CKRCTRL ;
 int SPIDER_NET_CKRCTRL_RUN_VALUE ;
 int SPIDER_NET_CKRCTRL_STOP_VALUE ;
 int SPIDER_NET_FIRMWARE_SEQS ;
 int SPIDER_NET_FIRMWARE_SEQWORDS ;
 scalar_t__ SPIDER_NET_GSINIT ;
 scalar_t__ SPIDER_NET_GSnPRGADR ;
 scalar_t__ SPIDER_NET_GSnPRGDAT ;
 int spider_net_write_reg (struct spider_net_card*,scalar_t__,int) ;

__attribute__((used)) static void
spider_net_workaround_rxramfull(struct spider_net_card *card)
{
 int i, sequencer = 0;


 spider_net_write_reg(card, SPIDER_NET_CKRCTRL,
        SPIDER_NET_CKRCTRL_RUN_VALUE);


 for (sequencer = 0; sequencer < SPIDER_NET_FIRMWARE_SEQS;
      sequencer++) {
  spider_net_write_reg(card, SPIDER_NET_GSnPRGADR +
         sequencer * 8, 0x0);
  for (i = 0; i < SPIDER_NET_FIRMWARE_SEQWORDS; i++) {
   spider_net_write_reg(card, SPIDER_NET_GSnPRGDAT +
          sequencer * 8, 0x0);
  }
 }


 spider_net_write_reg(card, SPIDER_NET_GSINIT, 0x000000fe);


 spider_net_write_reg(card, SPIDER_NET_CKRCTRL,
        SPIDER_NET_CKRCTRL_STOP_VALUE);
}
