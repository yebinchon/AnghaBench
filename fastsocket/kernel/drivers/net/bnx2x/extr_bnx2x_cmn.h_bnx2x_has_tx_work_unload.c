
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_fp_txdata {scalar_t__ tx_pkt_prod; scalar_t__ tx_pkt_cons; } ;


 int barrier () ;

__attribute__((used)) static inline int bnx2x_has_tx_work_unload(struct bnx2x_fp_txdata *txdata)
{

 barrier();
 return txdata->tx_pkt_prod != txdata->tx_pkt_cons;
}
