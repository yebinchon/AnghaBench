
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int needed_tailroom; int mtu; int tx_queue_len; int flags; int destructor; scalar_t__ watchdog_timeo; int type; int features; int broadcast; int addr_len; } ;


 int ARPHRD_IEEE802154 ;
 int IEEE802154_ADDR_LEN ;
 int IFF_BROADCAST ;
 int IFF_NOARP ;
 int NETIF_F_NO_CSUM ;
 int ieee802154_fake_destruct ;
 int memset (int ,int,int ) ;

__attribute__((used)) static void ieee802154_fake_setup(struct net_device *dev)
{
 dev->addr_len = IEEE802154_ADDR_LEN;
 memset(dev->broadcast, 0xff, IEEE802154_ADDR_LEN);
 dev->features = NETIF_F_NO_CSUM;
 dev->needed_tailroom = 2;
 dev->mtu = 127;
 dev->tx_queue_len = 10;
 dev->type = ARPHRD_IEEE802154;
 dev->flags = IFF_NOARP | IFF_BROADCAST;
 dev->watchdog_timeo = 0;
 dev->destructor = ieee802154_fake_destruct;
}
