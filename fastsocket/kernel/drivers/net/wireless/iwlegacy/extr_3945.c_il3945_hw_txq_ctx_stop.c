
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_txq_num; } ;
struct il_priv {TYPE_1__ hw_params; } ;


 int ALM_SCD_MODE_REG ;
 int ALM_SCD_TXFACT_REG ;
 int FH39_TCSR_CONFIG (int) ;
 int FH39_TSSR_TX_STATUS ;
 int FH39_TSSR_TX_STATUS_REG_MSK_CHNL_IDLE (int) ;
 int _il_poll_bit (struct il_priv*,int ,int ,int ,int) ;
 int _il_wr (struct il_priv*,int ,int) ;
 int _il_wr_prph (struct il_priv*,int ,int ) ;

void
il3945_hw_txq_ctx_stop(struct il_priv *il)
{
 int txq_id;


 _il_wr_prph(il, ALM_SCD_MODE_REG, 0);
 _il_wr_prph(il, ALM_SCD_TXFACT_REG, 0);


 for (txq_id = 0; txq_id < il->hw_params.max_txq_num; txq_id++) {
  _il_wr(il, FH39_TCSR_CONFIG(txq_id), 0x0);
  _il_poll_bit(il, FH39_TSSR_TX_STATUS,
        FH39_TSSR_TX_STATUS_REG_MSK_CHNL_IDLE(txq_id),
        FH39_TSSR_TX_STATUS_REG_MSK_CHNL_IDLE(txq_id),
        1000);
 }
}
