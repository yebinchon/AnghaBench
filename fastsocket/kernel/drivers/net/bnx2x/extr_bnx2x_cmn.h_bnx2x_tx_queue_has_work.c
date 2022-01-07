
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct bnx2x_fp_txdata {scalar_t__ tx_pkt_cons; int * tx_cons_sb; } ;


 int barrier () ;
 scalar_t__ le16_to_cpu (int ) ;

__attribute__((used)) static inline int bnx2x_tx_queue_has_work(struct bnx2x_fp_txdata *txdata)
{
 u16 hw_cons;


 barrier();
 hw_cons = le16_to_cpu(*txdata->tx_cons_sb);
 return hw_cons != txdata->tx_pkt_cons;
}
