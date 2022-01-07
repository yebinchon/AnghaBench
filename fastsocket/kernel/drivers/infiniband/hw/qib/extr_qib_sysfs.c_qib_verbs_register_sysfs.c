
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_device {int dev; } ;
struct TYPE_2__ {struct ib_device ibdev; } ;
struct qib_devdata {TYPE_1__ verbs_dev; } ;


 int ARRAY_SIZE (int *) ;
 int device_create_file (int *,int ) ;
 int * qib_attributes ;

int qib_verbs_register_sysfs(struct qib_devdata *dd)
{
 struct ib_device *dev = &dd->verbs_dev.ibdev;
 int i, ret;

 for (i = 0; i < ARRAY_SIZE(qib_attributes); ++i) {
  ret = device_create_file(&dev->dev, qib_attributes[i]);
  if (ret)
   return ret;
 }

 return 0;
}
