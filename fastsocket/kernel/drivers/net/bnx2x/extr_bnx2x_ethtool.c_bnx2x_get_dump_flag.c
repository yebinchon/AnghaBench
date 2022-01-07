
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_dump {int len; int flag; int version; } ;
struct bnx2x {int dump_preset_idx; } ;


 int BNX2X_DUMP_VERSION ;
 int BNX2X_MSG_ETHTOOL ;
 int DP (int ,char*,int ,int ) ;
 int bnx2x_get_preset_regs_len (struct net_device*,int ) ;
 struct bnx2x* netdev_priv (struct net_device*) ;

__attribute__((used)) static int bnx2x_get_dump_flag(struct net_device *dev,
          struct ethtool_dump *dump)
{
 struct bnx2x *bp = netdev_priv(dev);

 dump->version = BNX2X_DUMP_VERSION;
 dump->flag = bp->dump_preset_idx;

 dump->len = bnx2x_get_preset_regs_len(dev, bp->dump_preset_idx);
 DP(BNX2X_MSG_ETHTOOL, "Get dump preset %d length=%d\n",
    bp->dump_preset_idx, dump->len);
 return 0;
}
