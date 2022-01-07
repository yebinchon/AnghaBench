
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_device {int dev; } ;


 int ARRAY_SIZE (int *) ;
 scalar_t__ device_create_file (int *,int ) ;
 int * ipath_class_attributes ;

__attribute__((used)) static int ipath_verbs_register_sysfs(struct ib_device *dev)
{
 int i;
 int ret;

 for (i = 0; i < ARRAY_SIZE(ipath_class_attributes); ++i)
  if (device_create_file(&dev->dev,
           ipath_class_attributes[i])) {
   ret = 1;
   goto bail;
  }

 ret = 0;

bail:
 return ret;
}
