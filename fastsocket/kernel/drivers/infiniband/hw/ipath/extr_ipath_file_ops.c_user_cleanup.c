
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IPATH_NMINORS ;
 int class_destroy (int *) ;
 int dev ;
 int * ipath_class ;
 int unregister_chrdev_region (int ,int ) ;

__attribute__((used)) static void user_cleanup(void)
{
 if (ipath_class) {
  class_destroy(ipath_class);
  ipath_class = ((void*)0);
 }

 unregister_chrdev_region(dev, IPATH_NMINORS);
}
