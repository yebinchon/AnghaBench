
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status_flags; int type_error_flags; } ;
union eth_rx_cqe {TYPE_1__ fast_path_cqe; } ;
struct sk_buff {int ip_summed; } ;
struct bnx2x_fastpath {int dummy; } ;
struct bnx2x_eth_q_stats {int hw_csum_err; } ;


 int CHECKSUM_UNNECESSARY ;
 int ETH_FAST_PATH_RX_CQE_IP_BAD_XSUM_FLG ;
 int ETH_FAST_PATH_RX_CQE_L4_BAD_XSUM_FLG ;
 int ETH_FAST_PATH_RX_CQE_L4_XSUM_NO_VALIDATION_FLG ;

__attribute__((used)) static
void bnx2x_csum_validate(struct sk_buff *skb, union eth_rx_cqe *cqe,
     struct bnx2x_fastpath *fp,
     struct bnx2x_eth_q_stats *qstats)
{





 if (cqe->fast_path_cqe.status_flags &
     ETH_FAST_PATH_RX_CQE_L4_XSUM_NO_VALIDATION_FLG)
  return;



 if (cqe->fast_path_cqe.type_error_flags &
     (ETH_FAST_PATH_RX_CQE_IP_BAD_XSUM_FLG |
      ETH_FAST_PATH_RX_CQE_L4_BAD_XSUM_FLG))
  qstats->hw_csum_err++;
 else
  skb->ip_summed = CHECKSUM_UNNECESSARY;
}
