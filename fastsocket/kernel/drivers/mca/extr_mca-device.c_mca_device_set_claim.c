
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mca_device {int driver_loaded; } ;



void mca_device_set_claim(struct mca_device *mca_dev, int val)
{
 mca_dev->driver_loaded = val;
}
