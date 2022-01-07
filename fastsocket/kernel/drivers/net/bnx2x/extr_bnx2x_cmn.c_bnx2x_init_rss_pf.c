
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {scalar_t__ pmf; } ;
struct TYPE_4__ {scalar_t__* ind_table; } ;
struct bnx2x {TYPE_3__ port; TYPE_2__* fp; TYPE_1__ rss_conf_obj; } ;
struct TYPE_5__ {scalar_t__ cl_id; } ;


 int BNX2X_NUM_ETH_QUEUES (struct bnx2x*) ;
 int CHIP_IS_E1x (struct bnx2x*) ;
 int bnx2x_config_rss_eth (struct bnx2x*,int) ;
 scalar_t__ ethtool_rxfh_indir_default (int,int ) ;

__attribute__((used)) static int bnx2x_init_rss_pf(struct bnx2x *bp)
{
 int i;
 u8 num_eth_queues = BNX2X_NUM_ETH_QUEUES(bp);




 for (i = 0; i < sizeof(bp->rss_conf_obj.ind_table); i++)
  bp->rss_conf_obj.ind_table[i] =
   bp->fp->cl_id +
   ethtool_rxfh_indir_default(i, num_eth_queues);
 return bnx2x_config_rss_eth(bp, bp->port.pmf || !CHIP_IS_E1x(bp));
}
