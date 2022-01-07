
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct cycx_x25_channel {int lcn; int link; int card; scalar_t__ svc; } ;


 int WAN_DISCONNECTED ;
 int WAN_DISCONNECTING ;
 int cycx_x25_set_chan_state (struct net_device*,int ) ;
 struct cycx_x25_channel* netdev_priv (struct net_device*) ;
 int x25_clear_call (int ,int ,int ,int ,int ) ;

__attribute__((used)) static void cycx_x25_chan_disconnect(struct net_device *dev)
{
 struct cycx_x25_channel *chan = netdev_priv(dev);

 if (chan->svc) {
  x25_clear_call(chan->card, chan->link, chan->lcn, 0, 0);
  cycx_x25_set_chan_state(dev, WAN_DISCONNECTING);
 } else
  cycx_x25_set_chan_state(dev, WAN_DISCONNECTED);
}
