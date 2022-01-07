
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int* dev_addr; int type; scalar_t__ tx_queue_len; int destructor; int * netdev_ops; } ;


 int ARPHRD_IEEE80211_RADIOTAP ;
 int ETH_ALEN ;
 int ether_setup (struct net_device*) ;
 int free_netdev ;
 int hwsim_netdev_ops ;
 int memset (int*,int ,int ) ;

__attribute__((used)) static void hwsim_mon_setup(struct net_device *dev)
{
 dev->netdev_ops = &hwsim_netdev_ops;
 dev->destructor = free_netdev;
 ether_setup(dev);
 dev->tx_queue_len = 0;
 dev->type = ARPHRD_IEEE80211_RADIOTAP;
 memset(dev->dev_addr, 0, ETH_ALEN);
 dev->dev_addr[0] = 0x12;
}
