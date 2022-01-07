
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mca_device {int driver_loaded; } ;



int mca_device_claimed(struct mca_device *mca_dev)
{
 return mca_dev->driver_loaded;
}
