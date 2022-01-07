
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int dummy; } ;


 int FH39_RCSR_CONFIG (int ) ;
 int FH39_RSSR_CHNL0_RX_STATUS_CHNL_IDLE ;
 int FH39_RSSR_STATUS ;
 int IL_ERR (char*) ;
 int _il_poll_bit (struct il_priv*,int ,int ,int ,int) ;
 int _il_wr (struct il_priv*,int ,int ) ;

int
il3945_hw_rxq_stop(struct il_priv *il)
{
 int ret;

 _il_wr(il, FH39_RCSR_CONFIG(0), 0);
 ret = _il_poll_bit(il, FH39_RSSR_STATUS,
      FH39_RSSR_CHNL0_RX_STATUS_CHNL_IDLE,
      FH39_RSSR_CHNL0_RX_STATUS_CHNL_IDLE,
      1000);
 if (ret < 0)
  IL_ERR("Can't stop Rx DMA.\n");

 return 0;
}
