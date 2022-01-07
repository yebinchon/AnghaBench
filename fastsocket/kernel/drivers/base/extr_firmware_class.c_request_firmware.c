
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firmware {int dummy; } ;
struct device {int dummy; } ;


 int _request_firmware (struct firmware const**,char const*,struct device*,int) ;

int
request_firmware(const struct firmware **firmware_p, const char *name,
                 struct device *device)
{
        int uevent = 1;
        return _request_firmware(firmware_p, name, device, uevent);
}
