
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* sig; } ;
struct eisa_device {TYPE_1__ id; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,char*) ;
 struct eisa_device* to_eisa_device (struct device*) ;

__attribute__((used)) static ssize_t eisa_show_sig (struct device *dev, struct device_attribute *attr, char *buf)
{
        struct eisa_device *edev = to_eisa_device (dev);
        return sprintf (buf,"%s\n", edev->id.sig);
}
