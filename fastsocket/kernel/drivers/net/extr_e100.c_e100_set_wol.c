
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nic {TYPE_1__* pdev; int flags; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; } ;
struct TYPE_2__ {int dev; } ;


 int EOPNOTSUPP ;
 int WAKE_MAGIC ;
 int device_can_wakeup (int *) ;
 int device_set_wakeup_enable (int *,int ) ;
 int e100_configure ;
 int e100_exec_cb (struct nic*,int *,int ) ;
 struct nic* netdev_priv (struct net_device*) ;
 int wol_magic ;

__attribute__((used)) static int e100_set_wol(struct net_device *netdev, struct ethtool_wolinfo *wol)
{
 struct nic *nic = netdev_priv(netdev);

 if ((wol->wolopts && wol->wolopts != WAKE_MAGIC) ||
     !device_can_wakeup(&nic->pdev->dev))
  return -EOPNOTSUPP;

 if (wol->wolopts)
  nic->flags |= wol_magic;
 else
  nic->flags &= ~wol_magic;

 device_set_wakeup_enable(&nic->pdev->dev, wol->wolopts);

 e100_exec_cb(nic, ((void*)0), e100_configure);

 return 0;
}
