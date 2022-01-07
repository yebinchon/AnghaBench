
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef void* u16 ;
struct ustorm_eth_rx_producers {void* sge_prod; void* cqe_prod; void* bd_prod; int member_0; } ;
struct bnx2x_fastpath {int index; scalar_t__ ustorm_rx_prods_offset; } ;
struct bnx2x {int dummy; } ;
typedef int rx_prods ;


 int DP (int ,char*,int ,void*,void*,void*) ;
 int NETIF_MSG_RX_STATUS ;
 int REG_WR (struct bnx2x*,scalar_t__,int) ;
 int mmiowb () ;
 int wmb () ;

__attribute__((used)) static inline void bnx2x_update_rx_prod(struct bnx2x *bp,
     struct bnx2x_fastpath *fp,
     u16 bd_prod, u16 rx_comp_prod,
     u16 rx_sge_prod)
{
 struct ustorm_eth_rx_producers rx_prods = {0};
 u32 i;


 rx_prods.bd_prod = bd_prod;
 rx_prods.cqe_prod = rx_comp_prod;
 rx_prods.sge_prod = rx_sge_prod;
 wmb();

 for (i = 0; i < sizeof(rx_prods)/4; i++)
  REG_WR(bp, fp->ustorm_rx_prods_offset + i*4,
         ((u32 *)&rx_prods)[i]);

 mmiowb();

 DP(NETIF_MSG_RX_STATUS,
    "queue[%d]:  wrote  bd_prod %u  cqe_prod %u  sge_prod %u\n",
    fp->index, bd_prod, rx_comp_prod, rx_sge_prod);
}
