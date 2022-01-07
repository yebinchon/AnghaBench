
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {int mtu; int * netdev_ops; int tx_queue_len; int * header_ops; int type; int watchdog_timeo; int * wireless_handlers; TYPE_1__* wireless_data; } ;
struct TYPE_5__ {int * spy_data; } ;
struct hostap_interface {TYPE_1__ wireless_data; int spy_data; } ;
struct TYPE_6__ {int mtu; } ;
typedef TYPE_2__ local_info_t ;
struct TYPE_7__ {int ext_priv_flags; } ;


 int ARPHRD_IEEE80211 ;


 int IFF_TX_SKB_SHARING ;
 int SET_ETHTOOL_OPS (struct net_device*,int *) ;
 int TX_TIMEOUT ;
 int ether_setup (struct net_device*) ;
 int hostap_80211_ops ;
 int hostap_iw_handler_def ;
 int hostap_master_ops ;
 int hostap_mgmt_netdev_ops ;
 int hostap_netdev_ops ;
 TYPE_3__* netdev_extended (struct net_device*) ;
 struct hostap_interface* netdev_priv (struct net_device*) ;
 int prism2_ethtool_ops ;

void hostap_setup_dev(struct net_device *dev, local_info_t *local,
        int type)
{
 struct hostap_interface *iface;

 iface = netdev_priv(dev);
 ether_setup(dev);
 netdev_extended(dev)->ext_priv_flags &= ~IFF_TX_SKB_SHARING;


 if (iface) {


  iface->wireless_data.spy_data = &iface->spy_data;
  dev->wireless_data = &iface->wireless_data;
 }
 dev->wireless_handlers = &hostap_iw_handler_def;
 dev->watchdog_timeo = TX_TIMEOUT;

 switch(type) {
 case 129:
  dev->tx_queue_len = 0;
  dev->netdev_ops = &hostap_mgmt_netdev_ops;
  dev->type = ARPHRD_IEEE80211;
  dev->header_ops = &hostap_80211_ops;
  break;
 case 128:
  dev->netdev_ops = &hostap_master_ops;
  break;
 default:
  dev->tx_queue_len = 0;
  dev->netdev_ops = &hostap_netdev_ops;
 }

 dev->mtu = local->mtu;


 SET_ETHTOOL_OPS(dev, &prism2_ethtool_ops);

}
