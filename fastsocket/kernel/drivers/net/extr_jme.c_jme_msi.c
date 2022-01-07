
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct jme_adapter {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int JME_IEVE ;
 int jme_intr_msi (struct jme_adapter*,int ) ;
 int jread32 (struct jme_adapter*,int ) ;
 struct jme_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static irqreturn_t
jme_msi(int irq, void *dev_id)
{
 struct net_device *netdev = dev_id;
 struct jme_adapter *jme = netdev_priv(netdev);
 u32 intrstat;

 intrstat = jread32(jme, JME_IEVE);

 jme_intr_msi(jme, intrstat);

 return IRQ_HANDLED;
}
