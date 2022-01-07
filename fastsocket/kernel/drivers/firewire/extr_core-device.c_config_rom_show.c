
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_device {int config_rom_length; int config_rom; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int down_read (int *) ;
 struct fw_device* fw_device (struct device*) ;
 int fw_device_rwsem ;
 int memcpy (char*,int ,size_t) ;
 int up_read (int *) ;

__attribute__((used)) static ssize_t config_rom_show(struct device *dev,
          struct device_attribute *attr, char *buf)
{
 struct fw_device *device = fw_device(dev);
 size_t length;

 down_read(&fw_device_rwsem);
 length = device->config_rom_length * 4;
 memcpy(buf, device->config_rom, length);
 up_read(&fw_device_rwsem);

 return length;
}
