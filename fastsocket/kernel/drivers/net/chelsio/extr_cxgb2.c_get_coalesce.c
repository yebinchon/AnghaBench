
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {struct adapter* ml_priv; } ;
struct ethtool_coalesce {int use_adaptive_rx_coalesce; int rate_sample_interval; int rx_coalesce_usecs; } ;
struct TYPE_4__ {int coalesce_enable; int sample_interval_usecs; int rx_coalesce_usecs; } ;
struct TYPE_3__ {TYPE_2__ sge; } ;
struct adapter {TYPE_1__ params; } ;



__attribute__((used)) static int get_coalesce(struct net_device *dev, struct ethtool_coalesce *c)
{
 struct adapter *adapter = dev->ml_priv;

 c->rx_coalesce_usecs = adapter->params.sge.rx_coalesce_usecs;
 c->rate_sample_interval = adapter->params.sge.sample_interval_usecs;
 c->use_adaptive_rx_coalesce = adapter->params.sge.coalesce_enable;
 return 0;
}
