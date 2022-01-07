
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxgedev {int pdev; } ;
struct net_device {int dummy; } ;
struct ethtool_pauseparam {int rx_pause; int tx_pause; } ;
struct __vxge_hw_device {int dummy; } ;


 scalar_t__ netdev_priv (struct net_device*) ;
 scalar_t__ pci_get_drvdata (int ) ;
 int vxge_hw_device_getpause_data (struct __vxge_hw_device*,int ,int *,int *) ;

__attribute__((used)) static void vxge_ethtool_getpause_data(struct net_device *dev,
     struct ethtool_pauseparam *ep)
{
 struct vxgedev *vdev = (struct vxgedev *)netdev_priv(dev);
 struct __vxge_hw_device *hldev = (struct __vxge_hw_device *)
   pci_get_drvdata(vdev->pdev);

 vxge_hw_device_getpause_data(hldev, 0, &ep->tx_pause, &ep->rx_pause);
}
