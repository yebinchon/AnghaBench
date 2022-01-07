
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sge_rspq {int dummy; } ;
struct port_info {int first_qset; int nqsets; struct adapter* adapter; } ;
struct net_device {int dev; } ;
struct ethtool_coalesce {int rx_max_coalesced_frames; int rx_coalesce_usecs; } ;
struct TYPE_4__ {TYPE_1__* ethrxq; } ;
struct adapter {TYPE_2__ sge; } ;
struct TYPE_3__ {struct sge_rspq rspq; } ;


 int dev_err (int *,char*,int) ;
 struct port_info* netdev_priv (struct net_device*) ;
 int set_rxq_intr_params (struct adapter*,struct sge_rspq*,int ,int ) ;

__attribute__((used)) static int set_coalesce(struct net_device *dev, struct ethtool_coalesce *c)
{
 const struct port_info *pi = netdev_priv(dev);
 struct adapter *adap = pi->adapter;
 struct sge_rspq *q;
 int i;
 int r = 0;

 for (i = pi->first_qset; i < pi->first_qset + pi->nqsets; i++) {
  q = &adap->sge.ethrxq[i].rspq;
  r = set_rxq_intr_params(adap, q, c->rx_coalesce_usecs,
   c->rx_max_coalesced_frames);
  if (r) {
   dev_err(&dev->dev, "failed to set coalesce %d\n", r);
   break;
  }
 }
 return r;
}
