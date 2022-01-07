
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ixpdev_priv {int channel; int napi; } ;


 int IRQF_SHARED ;
 int IRQ_IXP2000_THDA0 ;
 int IXP2000_IRQ_THD_ENABLE_SET_A_0 ;
 int ixp2000_reg_write (int ,int) ;
 int ixpdev_interrupt ;
 int napi_disable (int *) ;
 int napi_enable (int *) ;
 int nds ;
 int nds_open ;
 struct ixpdev_priv* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int request_irq (int ,int ,int ,char*,int ) ;
 int set_port_admin_status (int ,int) ;

__attribute__((used)) static int ixpdev_open(struct net_device *dev)
{
 struct ixpdev_priv *ip = netdev_priv(dev);
 int err;

 napi_enable(&ip->napi);
 if (!nds_open++) {
  err = request_irq(IRQ_IXP2000_THDA0, ixpdev_interrupt,
     IRQF_SHARED, "ixp2000_eth", nds);
  if (err) {
   nds_open--;
   napi_disable(&ip->napi);
   return err;
  }

  ixp2000_reg_write(IXP2000_IRQ_THD_ENABLE_SET_A_0, 0xffff);
 }

 set_port_admin_status(ip->channel, 1);
 netif_start_queue(dev);

 return 0;
}
