
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dev_t ;


 int device_destroy (int ,int ) ;
 int osst_sysfs_class ;

__attribute__((used)) static void osst_sysfs_destroy(dev_t dev)
{
 device_destroy(osst_sysfs_class, dev);
}
