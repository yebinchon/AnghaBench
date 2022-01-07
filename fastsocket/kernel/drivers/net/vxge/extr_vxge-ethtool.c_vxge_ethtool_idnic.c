
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vxgedev {int pdev; } ;
struct net_device {int dummy; } ;
struct __vxge_hw_device {int dummy; } ;


 int HZ ;
 int VXGE_FLICKER_OFF ;
 int VXGE_FLICKER_ON ;
 int VXGE_MAX_FLICKER_TIME ;
 int msleep_interruptible (int) ;
 scalar_t__ netdev_priv (struct net_device*) ;
 scalar_t__ pci_get_drvdata (int ) ;
 int vxge_hw_device_flick_link_led (struct __vxge_hw_device*,int ) ;

__attribute__((used)) static int vxge_ethtool_idnic(struct net_device *dev, u32 data)
{
 struct vxgedev *vdev = (struct vxgedev *)netdev_priv(dev);
 struct __vxge_hw_device *hldev = (struct __vxge_hw_device *)
   pci_get_drvdata(vdev->pdev);

 vxge_hw_device_flick_link_led(hldev, VXGE_FLICKER_ON);
 msleep_interruptible(data ? (data * HZ) : VXGE_MAX_FLICKER_TIME);
 vxge_hw_device_flick_link_led(hldev, VXGE_FLICKER_OFF);

 return 0;
}
