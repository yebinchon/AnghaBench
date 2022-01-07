
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct iwl_trans {int dummy; } ;


 int SCD_QUEUE_STATUS_BITS (int ) ;
 int SCD_QUEUE_STTS_REG_POS_ACTIVE ;
 int SCD_QUEUE_STTS_REG_POS_SCD_ACT_EN ;
 int iwl_write_prph (struct iwl_trans*,int ,int) ;

__attribute__((used)) static inline void iwl_pcie_txq_set_inactive(struct iwl_trans *trans,
          u16 txq_id)
{


 iwl_write_prph(trans,
  SCD_QUEUE_STATUS_BITS(txq_id),
  (0 << SCD_QUEUE_STTS_REG_POS_ACTIVE)|
  (1 << SCD_QUEUE_STTS_REG_POS_SCD_ACT_EN));
}
