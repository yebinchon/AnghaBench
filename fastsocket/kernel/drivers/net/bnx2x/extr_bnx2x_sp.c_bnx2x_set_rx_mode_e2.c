
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_3__ {int rule_cnt; } ;
struct eth_filter_rules_ramrod_data {TYPE_1__ header; TYPE_2__* rules; } ;
struct bnx2x_rx_mode_ramrod_params {int rdata_mapping; int cid; int tx_accept_flags; int rx_accept_flags; int func_id; int ramrod_flags; int rx_mode_flags; void* cl_id; struct eth_filter_rules_ramrod_data* rdata; } ;
struct bnx2x {int dummy; } ;
struct TYPE_4__ {void* cmd_general_data; int func_id; void* client_id; } ;


 int BNX2X_MSG_SP ;
 int BNX2X_RX_MODE_FCOE_ETH ;
 int DP (int ,char*,int ,int ,int ) ;
 int ETH_CONNECTION_TYPE ;
 void* ETH_FILTER_RULES_CMD_RX_CMD ;
 void* ETH_FILTER_RULES_CMD_TX_CMD ;
 int RAMROD_CMD_ID_ETH_FILTER_RULES ;
 int RAMROD_RX ;
 int RAMROD_TX ;
 int U64_HI (int ) ;
 int U64_LO (int ) ;
 void* bnx2x_fcoe (struct bnx2x*,int ) ;
 int bnx2x_rx_mode_set_cmd_state_e2 (struct bnx2x*,int *,TYPE_2__*,int) ;
 int bnx2x_rx_mode_set_rdata_hdr_e2 (int ,TYPE_1__*,size_t) ;
 int bnx2x_sp_post (struct bnx2x*,int ,int ,int ,int ,int ) ;
 int cl_id ;
 int memset (struct eth_filter_rules_ramrod_data*,int ,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int bnx2x_set_rx_mode_e2(struct bnx2x *bp,
    struct bnx2x_rx_mode_ramrod_params *p)
{
 struct eth_filter_rules_ramrod_data *data = p->rdata;
 int rc;
 u8 rule_idx = 0;


 memset(data, 0, sizeof(*data));




 if (test_bit(RAMROD_TX, &p->ramrod_flags)) {
  data->rules[rule_idx].client_id = p->cl_id;
  data->rules[rule_idx].func_id = p->func_id;

  data->rules[rule_idx].cmd_general_data =
   ETH_FILTER_RULES_CMD_TX_CMD;

  bnx2x_rx_mode_set_cmd_state_e2(bp, &p->tx_accept_flags,
            &(data->rules[rule_idx++]),
            0);
 }


 if (test_bit(RAMROD_RX, &p->ramrod_flags)) {
  data->rules[rule_idx].client_id = p->cl_id;
  data->rules[rule_idx].func_id = p->func_id;

  data->rules[rule_idx].cmd_general_data =
   ETH_FILTER_RULES_CMD_RX_CMD;

  bnx2x_rx_mode_set_cmd_state_e2(bp, &p->rx_accept_flags,
            &(data->rules[rule_idx++]),
            0);
 }







 if (test_bit(BNX2X_RX_MODE_FCOE_ETH, &p->rx_mode_flags)) {

  if (test_bit(RAMROD_TX, &p->ramrod_flags)) {
   data->rules[rule_idx].client_id = bnx2x_fcoe(bp, cl_id);
   data->rules[rule_idx].func_id = p->func_id;

   data->rules[rule_idx].cmd_general_data =
      ETH_FILTER_RULES_CMD_TX_CMD;

   bnx2x_rx_mode_set_cmd_state_e2(bp, &p->tx_accept_flags,
             &(data->rules[rule_idx]),
             1);
   rule_idx++;
  }


  if (test_bit(RAMROD_RX, &p->ramrod_flags)) {
   data->rules[rule_idx].client_id = bnx2x_fcoe(bp, cl_id);
   data->rules[rule_idx].func_id = p->func_id;

   data->rules[rule_idx].cmd_general_data =
      ETH_FILTER_RULES_CMD_RX_CMD;

   bnx2x_rx_mode_set_cmd_state_e2(bp, &p->rx_accept_flags,
             &(data->rules[rule_idx]),
             1);
   rule_idx++;
  }
 }




 bnx2x_rx_mode_set_rdata_hdr_e2(p->cid, &data->header, rule_idx);

 DP(BNX2X_MSG_SP, "About to configure %d rules, rx_accept_flags 0x%lx, tx_accept_flags 0x%lx\n",
    data->header.rule_cnt, p->rx_accept_flags,
    p->tx_accept_flags);
 rc = bnx2x_sp_post(bp, RAMROD_CMD_ID_ETH_FILTER_RULES, p->cid,
      U64_HI(p->rdata_mapping),
      U64_LO(p->rdata_mapping),
      ETH_CONNECTION_TYPE);
 if (rc)
  return rc;


 return 1;
}
