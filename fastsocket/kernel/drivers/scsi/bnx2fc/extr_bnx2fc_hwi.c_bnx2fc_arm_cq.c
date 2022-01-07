
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct b577xx_fcoe_rx_doorbell {int doorbell_cq_cons; } ;
struct bnx2fc_rport {int cq_cons_idx; int cq_curr_toggle_bit; int ctx_base; struct b577xx_fcoe_rx_doorbell rx_db; } ;


 int FCOE_CQE_TOGGLE_BIT_SHIFT ;
 int cpu_to_le32 (int ) ;
 int mmiowb () ;
 int wmb () ;
 int writel (int ,int ) ;

void bnx2fc_arm_cq(struct bnx2fc_rport *tgt)
{
 struct b577xx_fcoe_rx_doorbell *rx_db = &tgt->rx_db;
 u32 msg;

 wmb();
 rx_db->doorbell_cq_cons = tgt->cq_cons_idx | (tgt->cq_curr_toggle_bit <<
   FCOE_CQE_TOGGLE_BIT_SHIFT);
 msg = *((u32 *)rx_db);
 writel(cpu_to_le32(msg), tgt->ctx_base);
 mmiowb();

}
