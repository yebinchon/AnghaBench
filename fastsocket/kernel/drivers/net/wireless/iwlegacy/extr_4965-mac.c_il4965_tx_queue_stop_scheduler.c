
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct il_priv {int dummy; } ;


 int IL49_SCD_QUEUE_STATUS_BITS (int ) ;
 int IL49_SCD_QUEUE_STTS_REG_POS_ACTIVE ;
 int IL49_SCD_QUEUE_STTS_REG_POS_SCD_ACT_EN ;
 int il_wr_prph (struct il_priv*,int ,int) ;

__attribute__((used)) static void
il4965_tx_queue_stop_scheduler(struct il_priv *il, u16 txq_id)
{


 il_wr_prph(il, IL49_SCD_QUEUE_STATUS_BITS(txq_id),
     (0 << IL49_SCD_QUEUE_STTS_REG_POS_ACTIVE) |
     (1 << IL49_SCD_QUEUE_STTS_REG_POS_SCD_ACT_EN));
}
