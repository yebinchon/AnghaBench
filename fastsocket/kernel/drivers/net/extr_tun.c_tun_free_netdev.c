
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sk; } ;
struct tun_struct {TYPE_1__ socket; } ;
struct net_device {int dummy; } ;


 struct tun_struct* netdev_priv (struct net_device*) ;
 int sock_put (int ) ;

__attribute__((used)) static void tun_free_netdev(struct net_device *dev)
{
 struct tun_struct *tun = netdev_priv(dev);

 sock_put(tun->socket.sk);
}
