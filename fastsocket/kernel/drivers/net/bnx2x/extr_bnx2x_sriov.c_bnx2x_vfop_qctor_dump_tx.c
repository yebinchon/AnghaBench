
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct bnx2x_virtf {int abs_vfid; } ;
struct TYPE_4__ {int traffic_type; } ;
struct bnx2x_queue_setup_params {TYPE_2__ txq_params; int flags; } ;
struct TYPE_3__ {int hc_rate; int sb_cq_index; } ;
struct bnx2x_queue_init_params {TYPE_1__ tx; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_MSG_IOV ;
 int DP (int ,char*,int ,int ,int ,int ,int ,int ,int ) ;

void bnx2x_vfop_qctor_dump_tx(struct bnx2x *bp, struct bnx2x_virtf *vf,
         struct bnx2x_queue_init_params *init_params,
         struct bnx2x_queue_setup_params *setup_params,
         u16 q_idx, u16 sb_idx)
{
 DP(BNX2X_MSG_IOV,
    "VF[%d] Q_SETUP: txq[%d]-- vfsb=%d, sb-index=%d, hc-rate=%d, flags=0x%lx, traffic-type=%d",
    vf->abs_vfid,
    q_idx,
    sb_idx,
    init_params->tx.sb_cq_index,
    init_params->tx.hc_rate,
    setup_params->flags,
    setup_params->txq_params.traffic_type);
}
