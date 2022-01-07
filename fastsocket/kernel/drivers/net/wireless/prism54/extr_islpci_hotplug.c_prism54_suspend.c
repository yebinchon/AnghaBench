
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
typedef int pm_message_t ;
struct TYPE_4__ {int device_base; } ;
typedef TYPE_1__ islpci_private ;


 int BUG_ON (int) ;
 int PRV_STATE_OFF ;
 int isl38xx_disable_interrupts (int ) ;
 int islpci_set_state (TYPE_1__*,int ) ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int netif_device_detach (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_save_state (struct pci_dev*) ;

__attribute__((used)) static int
prism54_suspend(struct pci_dev *pdev, pm_message_t state)
{
 struct net_device *ndev = pci_get_drvdata(pdev);
 islpci_private *priv = ndev ? netdev_priv(ndev) : ((void*)0);
 BUG_ON(!priv);


 pci_save_state(pdev);


 isl38xx_disable_interrupts(priv->device_base);



 islpci_set_state(priv, PRV_STATE_OFF);

 netif_stop_queue(ndev);
 netif_device_detach(ndev);

 return 0;
}
