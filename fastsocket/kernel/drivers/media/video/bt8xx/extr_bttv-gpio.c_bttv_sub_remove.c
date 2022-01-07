
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int driver; } ;
struct bttv_sub_driver {int (* remove ) (struct bttv_sub_device*) ;} ;
struct bttv_sub_device {int dummy; } ;


 int stub1 (struct bttv_sub_device*) ;
 struct bttv_sub_device* to_bttv_sub_dev (struct device*) ;
 struct bttv_sub_driver* to_bttv_sub_drv (int ) ;

__attribute__((used)) static int bttv_sub_remove(struct device *dev)
{
 struct bttv_sub_device *sdev = to_bttv_sub_dev(dev);
 struct bttv_sub_driver *sub = to_bttv_sub_drv(dev->driver);

 if (sub->remove)
  sub->remove(sdev);
 return 0;
}
