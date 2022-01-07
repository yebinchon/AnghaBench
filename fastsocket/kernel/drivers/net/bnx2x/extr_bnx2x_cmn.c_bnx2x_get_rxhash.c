
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct eth_fast_path_rx_cqe {int status_flags; int rss_hash_result; } ;
struct bnx2x {TYPE_1__* dev; } ;
struct TYPE_2__ {int features; } ;


 int ETH_FAST_PATH_RX_CQE_RSS_HASH_FLG ;
 int NETIF_F_RXHASH ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static u32 bnx2x_get_rxhash(const struct bnx2x *bp,
       const struct eth_fast_path_rx_cqe *cqe)
{

 if ((bp->dev->features & NETIF_F_RXHASH) &&
     (cqe->status_flags & ETH_FAST_PATH_RX_CQE_RSS_HASH_FLG))
  return le32_to_cpu(cqe->rss_hash_result);
 return 0;
}
