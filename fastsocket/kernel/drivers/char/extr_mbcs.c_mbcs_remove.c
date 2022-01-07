
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx_dev {int dev; scalar_t__ soft; } ;


 int dev_attr_algo ;
 int device_remove_file (int *,int *) ;
 int kfree (scalar_t__) ;
 int mbcs_intr_dealloc (struct cx_dev*) ;

__attribute__((used)) static int mbcs_remove(struct cx_dev *dev)
{
 if (dev->soft) {
  mbcs_intr_dealloc(dev);
  kfree(dev->soft);
 }

 device_remove_file(&dev->dev, &dev_attr_algo);

 return 0;
}
