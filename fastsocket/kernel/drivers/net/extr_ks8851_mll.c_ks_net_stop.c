
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; } ;
struct ks_net {int lock; int irq; } ;


 int KS_IER ;
 int KS_ISR ;
 int PMECR_PM_SOFTDOWN ;
 int free_irq (int ,struct net_device*) ;
 int ks_disable_qmu (struct ks_net*) ;
 int ks_info (struct ks_net*,char*,int ) ;
 int ks_set_powermode (struct ks_net*,int ) ;
 int ks_wrreg16 (struct ks_net*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ks_net* netdev_priv (struct net_device*) ;
 scalar_t__ netif_msg_ifdown (struct ks_net*) ;
 int netif_stop_queue (struct net_device*) ;

__attribute__((used)) static int ks_net_stop(struct net_device *netdev)
{
 struct ks_net *ks = netdev_priv(netdev);

 if (netif_msg_ifdown(ks))
  ks_info(ks, "%s: shutting down\n", netdev->name);

 netif_stop_queue(netdev);

 mutex_lock(&ks->lock);


 ks_wrreg16(ks, KS_IER, 0x0000);
 ks_wrreg16(ks, KS_ISR, 0xffff);


 ks_disable_qmu(ks);


 ks_set_powermode(ks, PMECR_PM_SOFTDOWN);
 free_irq(ks->irq, netdev);
 mutex_unlock(&ks->lock);
 return 0;
}
