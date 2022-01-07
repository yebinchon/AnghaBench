
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct queue_port_stats {int dummy; } ;
struct port_stats {int dummy; } ;
struct port_info {int tx_chan; struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;
struct adapter {int dummy; } ;


 int collect_sge_port_stats (struct adapter*,struct port_info*,struct queue_port_stats*) ;
 struct port_info* netdev_priv (struct net_device*) ;
 int t4_get_port_stats (struct adapter*,int ,struct port_stats*) ;

__attribute__((used)) static void get_stats(struct net_device *dev, struct ethtool_stats *stats,
        u64 *data)
{
 struct port_info *pi = netdev_priv(dev);
 struct adapter *adapter = pi->adapter;

 t4_get_port_stats(adapter, pi->tx_chan, (struct port_stats *)data);

 data += sizeof(struct port_stats) / sizeof(u64);
 collect_sge_port_stats(adapter, pi, (struct queue_port_stats *)data);
}
