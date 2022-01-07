
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_fp_txdata {int dummy; } ;
struct bnx2x_fastpath {int ** txdata_ptr; } ;
struct bnx2x {int max_cos; int * bnx2x_txq; struct bnx2x_fastpath* fp; } ;


 int BNX2X_NUM_ETH_QUEUES (struct bnx2x*) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static void bnx2x_shrink_eth_fp(struct bnx2x *bp, int delta)
{
 int i, cos, old_eth_num = BNX2X_NUM_ETH_QUEUES(bp);




 for (cos = 1; cos < bp->max_cos; cos++) {
  for (i = 0; i < old_eth_num - delta; i++) {
   struct bnx2x_fastpath *fp = &bp->fp[i];
   int new_idx = cos * (old_eth_num - delta) + i;

   memcpy(&bp->bnx2x_txq[new_idx], fp->txdata_ptr[cos],
          sizeof(struct bnx2x_fp_txdata));
   fp->txdata_ptr[cos] = &bp->bnx2x_txq[new_idx];
  }
 }
}
