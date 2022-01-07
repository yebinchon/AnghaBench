
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eth_spe {int dummy; } ;
struct bnx2x {scalar_t__ spq_prod_idx; struct eth_spe* spq_prod_bd; struct eth_spe* spq; struct eth_spe* spq_last_bd; } ;


 int BNX2X_MSG_SP ;
 int DP (int ,char*) ;

__attribute__((used)) static struct eth_spe *bnx2x_sp_get_next(struct bnx2x *bp)
{
 struct eth_spe *next_spe = bp->spq_prod_bd;

 if (bp->spq_prod_bd == bp->spq_last_bd) {
  bp->spq_prod_bd = bp->spq;
  bp->spq_prod_idx = 0;
  DP(BNX2X_MSG_SP, "end of spq\n");
 } else {
  bp->spq_prod_bd++;
  bp->spq_prod_idx++;
 }
 return next_spe;
}
