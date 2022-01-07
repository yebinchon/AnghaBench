
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_device {int* config_rom; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int down_read (int *) ;
 struct fw_device* fw_device (struct device*) ;
 int fw_device_rwsem ;
 int snprintf (char*,int ,char*,int,int) ;
 int up_read (int *) ;

__attribute__((used)) static ssize_t guid_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct fw_device *device = fw_device(dev);
 int ret;

 down_read(&fw_device_rwsem);
 ret = snprintf(buf, PAGE_SIZE, "0x%08x%08x\n",
         device->config_rom[3], device->config_rom[4]);
 up_read(&fw_device_rwsem);

 return ret;
}
