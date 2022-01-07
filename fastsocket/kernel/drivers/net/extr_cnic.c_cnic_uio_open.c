
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio_info {struct cnic_uio_dev* priv; } ;
struct inode {int dummy; } ;
struct cnic_uio_dev {int uio_dev; struct cnic_dev* dev; } ;
struct cnic_dev {int flags; } ;


 int CAP_NET_ADMIN ;
 int CNIC_F_CNIC_UP ;
 int EBUSY ;
 int ENODEV ;
 int EPERM ;
 int capable (int ) ;
 int cnic_init_rings (struct cnic_dev*) ;
 int cnic_shutdown_rings (struct cnic_dev*) ;
 int iminor (struct inode*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int cnic_uio_open(struct uio_info *uinfo, struct inode *inode)
{
 struct cnic_uio_dev *udev = uinfo->priv;
 struct cnic_dev *dev;

 if (!capable(CAP_NET_ADMIN))
  return -EPERM;

 if (udev->uio_dev != -1)
  return -EBUSY;

 rtnl_lock();
 dev = udev->dev;

 if (!dev || !test_bit(CNIC_F_CNIC_UP, &dev->flags)) {
  rtnl_unlock();
  return -ENODEV;
 }

 udev->uio_dev = iminor(inode);

 cnic_shutdown_rings(dev);
 cnic_init_rings(dev);
 rtnl_unlock();

 return 0;
}
