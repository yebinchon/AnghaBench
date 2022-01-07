
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_devmap {int dummy; } ;
struct ccw_device {int dev; } ;


 int DASD_FEATURE_DEFAULT ;
 scalar_t__ IS_ERR (struct dasd_devmap*) ;
 struct dasd_devmap* dasd_add_busid (int ,int ) ;
 struct dasd_devmap* dasd_find_busid (int ) ;
 int dev_name (int *) ;

__attribute__((used)) static struct dasd_devmap *
dasd_devmap_from_cdev(struct ccw_device *cdev)
{
 struct dasd_devmap *devmap;

 devmap = dasd_find_busid(dev_name(&cdev->dev));
 if (IS_ERR(devmap))
  devmap = dasd_add_busid(dev_name(&cdev->dev),
     DASD_FEATURE_DEFAULT);
 return devmap;
}
