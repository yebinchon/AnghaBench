
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bnx2x_rx_mode_ramrod_params {unsigned long rx_accept_flags; unsigned long tx_accept_flags; int rdata_mapping; int rdata; int ramrod_flags; int state; int * pstate; int func_id; int * rx_mode_obj; int cl_id; int cid; } ;
struct TYPE_3__ {struct bnx2x_rx_mode_ramrod_params rx_mode; } ;
struct bnx2x_virtf {int filter_state; int abs_vfid; TYPE_1__ op_params; } ;
struct bnx2x_vfop_cmd {int block; int done; } ;
struct bnx2x_vfop {int dummy; } ;
struct bnx2x_vf_queue {int cid; } ;
struct bnx2x {int rx_mode_obj; } ;
struct TYPE_4__ {int e2; } ;


 int BNX2X_FILTER_RX_MODE_PENDING ;
 int BNX2X_VFOP_RXMODE_CONFIG ;
 int ENOMEM ;
 int FW_VF_HANDLE (int ) ;
 int RAMROD_RX ;
 int RAMROD_TX ;
 int bnx2x_vf_sp (struct bnx2x*,struct bnx2x_virtf*,int ) ;
 int bnx2x_vf_sp_map (struct bnx2x*,struct bnx2x_virtf*,int ) ;
 struct bnx2x_vfop* bnx2x_vfop_add (struct bnx2x*,struct bnx2x_virtf*) ;
 int bnx2x_vfop_opset (int ,int ,int ) ;
 int bnx2x_vfop_rxmode ;
 int bnx2x_vfop_transition (struct bnx2x*,struct bnx2x_virtf*,int ,int ) ;
 int memset (struct bnx2x_rx_mode_ramrod_params*,int ,int) ;
 TYPE_2__ rx_mode_rdata ;
 int set_bit (int ,int *) ;
 int vfq_cl_id (struct bnx2x_virtf*,struct bnx2x_vf_queue*) ;
 struct bnx2x_vf_queue* vfq_get (struct bnx2x_virtf*,int) ;

int bnx2x_vfop_rxmode_cmd(struct bnx2x *bp,
     struct bnx2x_virtf *vf,
     struct bnx2x_vfop_cmd *cmd,
     int qid, unsigned long accept_flags)
{
 struct bnx2x_vf_queue *vfq = vfq_get(vf, qid);
 struct bnx2x_vfop *vfop = bnx2x_vfop_add(bp, vf);

 if (vfop) {
  struct bnx2x_rx_mode_ramrod_params *ramrod =
   &vf->op_params.rx_mode;

  memset(ramrod, 0, sizeof(*ramrod));


  ramrod->cid = vfq->cid;
  ramrod->cl_id = vfq_cl_id(vf, vfq);
  ramrod->rx_mode_obj = &bp->rx_mode_obj;
  ramrod->func_id = FW_VF_HANDLE(vf->abs_vfid);

  ramrod->rx_accept_flags = accept_flags;
  ramrod->tx_accept_flags = accept_flags;
  ramrod->pstate = &vf->filter_state;
  ramrod->state = BNX2X_FILTER_RX_MODE_PENDING;

  set_bit(BNX2X_FILTER_RX_MODE_PENDING, &vf->filter_state);
  set_bit(RAMROD_RX, &ramrod->ramrod_flags);
  set_bit(RAMROD_TX, &ramrod->ramrod_flags);

  ramrod->rdata =
   bnx2x_vf_sp(bp, vf, rx_mode_rdata.e2);
  ramrod->rdata_mapping =
   bnx2x_vf_sp_map(bp, vf, rx_mode_rdata.e2);

  bnx2x_vfop_opset(BNX2X_VFOP_RXMODE_CONFIG,
     bnx2x_vfop_rxmode, cmd->done);
  return bnx2x_vfop_transition(bp, vf, bnx2x_vfop_rxmode,
          cmd->block);
 }
 return -ENOMEM;
}
