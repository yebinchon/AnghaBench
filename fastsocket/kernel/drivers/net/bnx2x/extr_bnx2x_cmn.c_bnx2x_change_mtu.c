
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;
struct bnx2x {scalar_t__ recovery_state; } ;


 int BNX2X_ERR (char*) ;
 scalar_t__ BNX2X_RECOVERY_DONE ;
 int EAGAIN ;
 int EINVAL ;
 scalar_t__ ETH_HLEN ;
 int ETH_MAX_JUMBO_PACKET_SIZE ;
 scalar_t__ ETH_MIN_PACKET_SIZE ;
 int bnx2x_reload_if_running (struct net_device*) ;
 struct bnx2x* netdev_priv (struct net_device*) ;

int bnx2x_change_mtu(struct net_device *dev, int new_mtu)
{
 struct bnx2x *bp = netdev_priv(dev);

 if (bp->recovery_state != BNX2X_RECOVERY_DONE) {
  BNX2X_ERR("Can't perform change MTU during parity recovery\n");
  return -EAGAIN;
 }

 if ((new_mtu > ETH_MAX_JUMBO_PACKET_SIZE) ||
     ((new_mtu + ETH_HLEN) < ETH_MIN_PACKET_SIZE)) {
  BNX2X_ERR("Can't support requested MTU size\n");
  return -EINVAL;
 }





 dev->mtu = new_mtu;

 return bnx2x_reload_if_running(dev);
}
