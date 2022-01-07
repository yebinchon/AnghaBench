
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsi108_prv_data {int txlock; int mii_if; } ;
struct net_device {int dummy; } ;
struct ethtool_cmd {int dummy; } ;


 int mii_ethtool_sset (int *,struct ethtool_cmd*) ;
 struct tsi108_prv_data* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int tsi108_set_settings(struct net_device *dev, struct ethtool_cmd *cmd)
{
 struct tsi108_prv_data *data = netdev_priv(dev);
 unsigned long flags;
 int rc;

 spin_lock_irqsave(&data->txlock, flags);
 rc = mii_ethtool_sset(&data->mii_if, cmd);
 spin_unlock_irqrestore(&data->txlock, flags);

 return rc;
}
