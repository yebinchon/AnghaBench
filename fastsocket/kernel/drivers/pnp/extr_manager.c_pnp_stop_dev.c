
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pnp_dev {int dev; TYPE_1__* protocol; } ;
struct TYPE_2__ {scalar_t__ (* disable ) (struct pnp_dev*) ;} ;


 int EINVAL ;
 int EIO ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 int pnp_can_disable (struct pnp_dev*) ;
 int pnp_dbg (int *,char*) ;
 scalar_t__ stub1 (struct pnp_dev*) ;

int pnp_stop_dev(struct pnp_dev *dev)
{
 if (!pnp_can_disable(dev)) {
  pnp_dbg(&dev->dev, "disabling not supported\n");
  return -EINVAL;
 }
 if (dev->protocol->disable(dev) < 0) {
  dev_err(&dev->dev, "disable failed\n");
  return -EIO;
 }

 dev_info(&dev->dev, "disabled\n");
 return 0;
}
