
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cnic_local {struct cnic_eth_dev* ethdev; } ;
struct cnic_eth_dev {int (* drv_unregister_cnic ) (int ) ;} ;
struct cnic_dev {int netdev; struct cnic_local* cnic_priv; } ;


 int stub1 (int ) ;

__attribute__((used)) static void cnic_unregister_netdev(struct cnic_dev *dev)
{
 struct cnic_local *cp = dev->cnic_priv;
 struct cnic_eth_dev *ethdev = cp->ethdev;

 if (!ethdev)
  return;

 ethdev->drv_unregister_cnic(dev->netdev);
}
