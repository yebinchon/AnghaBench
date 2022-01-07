
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {TYPE_1__* ethtool_ops; } ;
struct ethtool_drvinfo {int driver; } ;
struct cnic_dev {int list; } ;
typedef int drvinfo ;
struct TYPE_2__ {int (* get_drvinfo ) (struct net_device*,struct ethtool_drvinfo*) ;} ;


 int cnic_dev_list ;
 int cnic_dev_lock ;
 struct cnic_dev* init_bnx2_cnic (struct net_device*) ;
 struct cnic_dev* init_bnx2x_cnic (struct net_device*) ;
 int list_add (int *,int *) ;
 int memset (struct ethtool_drvinfo*,int ,int) ;
 int strcmp (int ,char*) ;
 int stub1 (struct net_device*,struct ethtool_drvinfo*) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static struct cnic_dev *is_cnic_dev(struct net_device *dev)
{
 struct ethtool_drvinfo drvinfo;
 struct cnic_dev *cdev = ((void*)0);

 if (dev->ethtool_ops && dev->ethtool_ops->get_drvinfo) {
  memset(&drvinfo, 0, sizeof(drvinfo));
  dev->ethtool_ops->get_drvinfo(dev, &drvinfo);

  if (!strcmp(drvinfo.driver, "bnx2"))
   cdev = init_bnx2_cnic(dev);
  if (!strcmp(drvinfo.driver, "bnx2x"))
   cdev = init_bnx2x_cnic(dev);
  if (cdev) {
   write_lock(&cnic_dev_lock);
   list_add(&cdev->list, &cnic_dev_list);
   write_unlock(&cnic_dev_lock);
  }
 }
 return cdev;
}
