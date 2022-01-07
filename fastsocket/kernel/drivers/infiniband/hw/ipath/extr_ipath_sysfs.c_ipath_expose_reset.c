
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_attr_reset ;
 int device_create_file (struct device*,int *) ;

int ipath_expose_reset(struct device *dev)
{
 static int exposed;
 int ret;

 if (!exposed) {
  ret = device_create_file(dev, &dev_attr_reset);
  exposed = 1;
 }
 else
  ret = 0;

 return ret;
}
