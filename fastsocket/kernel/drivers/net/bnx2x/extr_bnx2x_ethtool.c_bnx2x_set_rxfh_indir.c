
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct TYPE_3__ {scalar_t__* ind_table; } ;
struct bnx2x {TYPE_2__* fp; TYPE_1__ rss_conf_obj; } ;
struct TYPE_4__ {scalar_t__ const cl_id; } ;


 size_t T_ETH_INDIRECTION_TABLE_SIZE ;
 int bnx2x_config_rss_eth (struct bnx2x*,int) ;
 struct bnx2x* netdev_priv (struct net_device*) ;

__attribute__((used)) static int bnx2x_set_rxfh_indir(struct net_device *dev, const u32 *indir)
{
 struct bnx2x *bp = netdev_priv(dev);
 size_t i;

 for (i = 0; i < T_ETH_INDIRECTION_TABLE_SIZE; i++) {
  bp->rss_conf_obj.ind_table[i] = indir[i] + bp->fp->cl_id;
 }

 return bnx2x_config_rss_eth(bp, 0);
}
