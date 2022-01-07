
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rio_dev {int dev; } ;


 int get_device (int *) ;

struct rio_dev *rio_dev_get(struct rio_dev *rdev)
{
 if (rdev)
  get_device(&rdev->dev);

 return rdev;
}
