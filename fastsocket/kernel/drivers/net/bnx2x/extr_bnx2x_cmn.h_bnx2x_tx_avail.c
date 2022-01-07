
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct bnx2x_fp_txdata {scalar_t__ tx_bd_prod; scalar_t__ tx_bd_cons; scalar_t__ tx_ring_size; } ;
struct bnx2x {int dummy; } ;
typedef scalar_t__ s16 ;


 scalar_t__ MAX_TX_AVAIL ;
 scalar_t__ SUB_S16 (scalar_t__,scalar_t__) ;
 int WARN_ON (int) ;

__attribute__((used)) static inline u16 bnx2x_tx_avail(struct bnx2x *bp,
     struct bnx2x_fp_txdata *txdata)
{
 s16 used;
 u16 prod;
 u16 cons;

 prod = txdata->tx_bd_prod;
 cons = txdata->tx_bd_cons;

 used = SUB_S16(prod, cons);







 return (s16)(txdata->tx_ring_size) - used;
}
