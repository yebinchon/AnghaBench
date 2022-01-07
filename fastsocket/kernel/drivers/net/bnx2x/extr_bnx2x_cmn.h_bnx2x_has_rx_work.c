
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eth_fast_path_rx_cqe {int dummy; } ;
union eth_rx_cqe {struct eth_fast_path_rx_cqe fast_path_cqe; } ;
typedef size_t u16 ;
struct bnx2x_fastpath {union eth_rx_cqe* rx_comp_ring; int rx_comp_cons; } ;


 int BNX2X_IS_CQE_COMPLETED (struct eth_fast_path_rx_cqe*) ;
 size_t RCQ_BD (int ) ;

__attribute__((used)) static inline int bnx2x_has_rx_work(struct bnx2x_fastpath *fp)
{
 u16 cons;
 union eth_rx_cqe *cqe;
 struct eth_fast_path_rx_cqe *cqe_fp;

 cons = RCQ_BD(fp->rx_comp_cons);
 cqe = &fp->rx_comp_ring[cons];
 cqe_fp = &cqe->fast_path_cqe;
 return BNX2X_IS_CQE_COMPLETED(cqe_fp);
}
