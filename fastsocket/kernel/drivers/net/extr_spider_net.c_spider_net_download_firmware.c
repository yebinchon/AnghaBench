
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spider_net_card {int dummy; } ;


 int EIO ;
 int SPIDER_NET_FIRMWARE_SEQS ;
 int SPIDER_NET_FIRMWARE_SEQWORDS ;
 scalar_t__ SPIDER_NET_GSINIT ;
 scalar_t__ SPIDER_NET_GSnPRGADR ;
 scalar_t__ SPIDER_NET_GSnPRGDAT ;
 int const SPIDER_NET_RUN_SEQ_VALUE ;
 int const SPIDER_NET_STOP_SEQ_VALUE ;
 scalar_t__ spider_net_read_reg (struct spider_net_card*,scalar_t__) ;
 int spider_net_write_reg (struct spider_net_card*,scalar_t__,int const) ;

__attribute__((used)) static int
spider_net_download_firmware(struct spider_net_card *card,
        const void *firmware_ptr)
{
 int sequencer, i;
 const u32 *fw_ptr = firmware_ptr;


 spider_net_write_reg(card, SPIDER_NET_GSINIT,
        SPIDER_NET_STOP_SEQ_VALUE);

 for (sequencer = 0; sequencer < SPIDER_NET_FIRMWARE_SEQS;
      sequencer++) {
  spider_net_write_reg(card,
         SPIDER_NET_GSnPRGADR + sequencer * 8, 0);
  for (i = 0; i < SPIDER_NET_FIRMWARE_SEQWORDS; i++) {
   spider_net_write_reg(card, SPIDER_NET_GSnPRGDAT +
          sequencer * 8, *fw_ptr);
   fw_ptr++;
  }
 }

 if (spider_net_read_reg(card, SPIDER_NET_GSINIT))
  return -EIO;

 spider_net_write_reg(card, SPIDER_NET_GSINIT,
        SPIDER_NET_RUN_SEQ_VALUE);

 return 0;
}
