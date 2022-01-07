
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skge_port {int dummy; } ;
struct skge_hw {struct net_device** dev; } ;
struct net_device {int dummy; } ;


 int XM_IMSK ;
 int XM_IMSK_DISABLE ;
 struct skge_port* netdev_priv (struct net_device*) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 int skge_link_down (struct skge_port*) ;
 int xm_write16 (struct skge_hw*,int,int ,int ) ;

__attribute__((used)) static void xm_link_down(struct skge_hw *hw, int port)
{
 struct net_device *dev = hw->dev[port];
 struct skge_port *skge = netdev_priv(dev);

 xm_write16(hw, port, XM_IMSK, XM_IMSK_DISABLE);

 if (netif_carrier_ok(dev))
  skge_link_down(skge);
}
