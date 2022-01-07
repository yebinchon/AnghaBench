
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2_tx_ring_info {int tx_prod; int tx_cons; } ;
struct bnx2 {int tx_ring_size; } ;


 int BNX2_MAX_TX_DESC_CNT ;
 int BNX2_TX_DESC_CNT ;
 int barrier () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline u32 bnx2_tx_avail(struct bnx2 *bp, struct bnx2_tx_ring_info *txr)
{
 u32 diff;


 barrier();




 diff = txr->tx_prod - txr->tx_cons;
 if (unlikely(diff >= BNX2_TX_DESC_CNT)) {
  diff &= 0xffff;
  if (diff == BNX2_TX_DESC_CNT)
   diff = BNX2_MAX_TX_DESC_CNT;
 }
 return (bp->tx_ring_size - diff);
}
