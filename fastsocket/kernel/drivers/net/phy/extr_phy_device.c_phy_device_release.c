
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int phy_device_free (int ) ;
 int to_phy_device (struct device*) ;

__attribute__((used)) static void phy_device_release(struct device *dev)
{
 phy_device_free(to_phy_device(dev));
}
