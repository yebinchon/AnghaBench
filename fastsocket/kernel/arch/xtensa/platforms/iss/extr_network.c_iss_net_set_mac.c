
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int dev_addr; } ;
struct iss_net_private {int lock; } ;


 int ETH_ALEN ;
 int memcpy (int ,int ,int ) ;
 struct iss_net_private* netdev_priv (struct net_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int iss_net_set_mac(struct net_device *dev, void *addr)
{
 return 0;
}
