
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucb1x00_driver {int (* add ) (struct ucb1x00_dev*) ;int devs; } ;
struct ucb1x00_dev {int drv_node; int dev_node; struct ucb1x00_driver* drv; struct ucb1x00* ucb; } ;
struct ucb1x00 {int devs; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct ucb1x00_dev*) ;
 struct ucb1x00_dev* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 int stub1 (struct ucb1x00_dev*) ;

__attribute__((used)) static int ucb1x00_add_dev(struct ucb1x00 *ucb, struct ucb1x00_driver *drv)
{
 struct ucb1x00_dev *dev;
 int ret = -ENOMEM;

 dev = kmalloc(sizeof(struct ucb1x00_dev), GFP_KERNEL);
 if (dev) {
  dev->ucb = ucb;
  dev->drv = drv;

  ret = drv->add(dev);

  if (ret == 0) {
   list_add(&dev->dev_node, &ucb->devs);
   list_add(&dev->drv_node, &drv->devs);
  } else {
   kfree(dev);
  }
 }
 return ret;
}
