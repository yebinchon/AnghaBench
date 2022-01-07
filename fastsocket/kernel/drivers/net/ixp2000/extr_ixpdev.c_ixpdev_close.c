
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ixpdev_priv {int channel; int napi; } ;


 int IRQ_IXP2000_THDA0 ;
 int IXP2000_IRQ_THD_ENABLE_CLEAR_A_0 ;
 int free_irq (int ,int ) ;
 int ixp2000_reg_write (int ,int) ;
 int napi_disable (int *) ;
 int nds ;
 int nds_open ;
 struct ixpdev_priv* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int set_port_admin_status (int ,int ) ;

__attribute__((used)) static int ixpdev_close(struct net_device *dev)
{
 struct ixpdev_priv *ip = netdev_priv(dev);

 netif_stop_queue(dev);
 napi_disable(&ip->napi);
 set_port_admin_status(ip->channel, 0);

 if (!--nds_open) {
  ixp2000_reg_write(IXP2000_IRQ_THD_ENABLE_CLEAR_A_0, 0xffff);
  free_irq(IRQ_IXP2000_THDA0, nds);
 }

 return 0;
}
