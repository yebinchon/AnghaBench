
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct rtl8169_private {int * RxDescArray; int * TxDescArray; int TxPhyAddr; int RxPhyAddr; TYPE_1__ wk; struct pci_dev* pci_dev; } ;
struct pci_dev {int dev; int irq; } ;
struct net_device {int dummy; } ;


 int R8169_RX_RING_BYTES ;
 int R8169_TX_RING_BYTES ;
 int RTL_FLAG_TASK_ENABLED ;
 int clear_bit (int ,int ) ;
 int dma_free_coherent (int *,int ,int *,int ) ;
 int free_irq (int ,struct net_device*) ;
 struct rtl8169_private* netdev_priv (struct net_device*) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_sync (int *) ;
 int rtl8169_down (struct net_device*) ;
 int rtl8169_update_counters (struct net_device*) ;
 int rtl_lock_work (struct rtl8169_private*) ;
 int rtl_unlock_work (struct rtl8169_private*) ;

__attribute__((used)) static int rtl8169_close(struct net_device *dev)
{
 struct rtl8169_private *tp = netdev_priv(dev);
 struct pci_dev *pdev = tp->pci_dev;

 pm_runtime_get_sync(&pdev->dev);


 rtl8169_update_counters(dev);

 rtl_lock_work(tp);
 clear_bit(RTL_FLAG_TASK_ENABLED, tp->wk.flags);

 rtl8169_down(dev);
 rtl_unlock_work(tp);

 free_irq(pdev->irq, dev);

 dma_free_coherent(&pdev->dev, R8169_RX_RING_BYTES, tp->RxDescArray,
     tp->RxPhyAddr);
 dma_free_coherent(&pdev->dev, R8169_TX_RING_BYTES, tp->TxDescArray,
     tp->TxPhyAddr);
 tp->TxDescArray = ((void*)0);
 tp->RxDescArray = ((void*)0);

 pm_runtime_put_sync(&pdev->dev);

 return 0;
}
