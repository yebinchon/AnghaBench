
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bnx2x_queue_state_params {TYPE_1__* q_obj; int cmd; } ;
struct TYPE_4__ {int spcl_id; } ;
struct bnx2x_queue_setup_tx_only_params {int cid_index; int flags; TYPE_2__ gen_params; int txq_params; } ;
struct bnx2x_fastpath {int dummy; } ;
struct bnx2x {int dummy; } ;
struct TYPE_3__ {int cl_id; int * cids; } ;


 int BNX2X_Q_CMD_SETUP_TX_ONLY ;
 int DP (int ,char*,int,int ,int ,int ,int ,int ) ;
 size_t FIRST_TX_COS_INDEX ;
 int NETIF_MSG_IFUP ;
 int bnx2x_get_common_flags (struct bnx2x*,struct bnx2x_fastpath*,int) ;
 int bnx2x_pf_q_prep_general (struct bnx2x*,struct bnx2x_fastpath*,TYPE_2__*,int) ;
 int bnx2x_pf_tx_q_prep (struct bnx2x*,struct bnx2x_fastpath*,int *,int) ;
 int bnx2x_queue_state_change (struct bnx2x*,struct bnx2x_queue_state_params*) ;
 int memset (struct bnx2x_queue_setup_tx_only_params*,int ,int) ;

__attribute__((used)) static int bnx2x_setup_tx_only(struct bnx2x *bp, struct bnx2x_fastpath *fp,
   struct bnx2x_queue_state_params *q_params,
   struct bnx2x_queue_setup_tx_only_params *tx_only_params,
   int tx_index, bool leading)
{
 memset(tx_only_params, 0, sizeof(*tx_only_params));


 q_params->cmd = BNX2X_Q_CMD_SETUP_TX_ONLY;


 tx_only_params->flags = bnx2x_get_common_flags(bp, fp, 0);


 tx_only_params->cid_index = tx_index;


 bnx2x_pf_q_prep_general(bp, fp, &tx_only_params->gen_params, tx_index);


 bnx2x_pf_tx_q_prep(bp, fp, &tx_only_params->txq_params, tx_index);

 DP(NETIF_MSG_IFUP,
    "preparing to send tx-only ramrod for connection: cos %d, primary cid %d, cid %d, client id %d, sp-client id %d, flags %lx\n",
    tx_index, q_params->q_obj->cids[FIRST_TX_COS_INDEX],
    q_params->q_obj->cids[tx_index], q_params->q_obj->cl_id,
    tx_only_params->gen_params.spcl_id, tx_only_params->flags);


 return bnx2x_queue_state_change(bp, q_params);
}
