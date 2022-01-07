
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int memset (struct device*,int ,int) ;

__attribute__((used)) static void drm_sysfs_device_release(struct device *dev)
{
 memset(dev, 0, sizeof(struct device));
 return;
}
