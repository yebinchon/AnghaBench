
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* hi; void* lo; } ;
struct client_init_tx_data {scalar_t__ state; TYPE_1__ tx_bd_page_base; int tss_leading_client_id; int tx_sb_index_number; int tx_status_block_id; int tunnel_non_lso_pcsum_location; void* force_default_pri_flg; void* anti_spoofing_flg; void* tx_switching_flg; void* default_vlan_flg; int default_vlan; void* enforce_security_flg; } ;
struct bnx2x_txq_setup_params {int dscr_map; int tss_leading_cl_id; int sb_cq_index; int fw_sb_id; int default_vlan; } ;
struct bnx2x_queue_sp_obj {int dummy; } ;


 int BNX2X_Q_FLG_ANTI_SPOOF ;
 int BNX2X_Q_FLG_DEF_VLAN ;
 int BNX2X_Q_FLG_FORCE_DEFAULT_PRI ;
 int BNX2X_Q_FLG_PCSUM_ON_PKT ;
 int BNX2X_Q_FLG_TX_SEC ;
 int BNX2X_Q_FLG_TX_SWITCH ;
 int PCSUM_ON_BD ;
 int PCSUM_ON_PKT ;
 int U64_HI (int ) ;
 int U64_LO (int ) ;
 int cpu_to_le16 (int ) ;
 void* cpu_to_le32 (int ) ;
 void* test_bit (int ,unsigned long*) ;

__attribute__((used)) static void bnx2x_q_fill_init_tx_data(struct bnx2x_queue_sp_obj *o,
    struct bnx2x_txq_setup_params *params,
    struct client_init_tx_data *tx_data,
    unsigned long *flags)
{
 tx_data->enforce_security_flg =
  test_bit(BNX2X_Q_FLG_TX_SEC, flags);
 tx_data->default_vlan =
  cpu_to_le16(params->default_vlan);
 tx_data->default_vlan_flg =
  test_bit(BNX2X_Q_FLG_DEF_VLAN, flags);
 tx_data->tx_switching_flg =
  test_bit(BNX2X_Q_FLG_TX_SWITCH, flags);
 tx_data->anti_spoofing_flg =
  test_bit(BNX2X_Q_FLG_ANTI_SPOOF, flags);
 tx_data->force_default_pri_flg =
  test_bit(BNX2X_Q_FLG_FORCE_DEFAULT_PRI, flags);

 tx_data->tunnel_non_lso_pcsum_location =
  test_bit(BNX2X_Q_FLG_PCSUM_ON_PKT, flags) ? PCSUM_ON_PKT :
          PCSUM_ON_BD;

 tx_data->tx_status_block_id = params->fw_sb_id;
 tx_data->tx_sb_index_number = params->sb_cq_index;
 tx_data->tss_leading_client_id = params->tss_leading_cl_id;

 tx_data->tx_bd_page_base.lo =
  cpu_to_le32(U64_LO(params->dscr_map));
 tx_data->tx_bd_page_base.hi =
  cpu_to_le32(U64_HI(params->dscr_map));


 tx_data->state = 0;
}
