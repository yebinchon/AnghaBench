
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zcrypt_device {char* type_string; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {struct zcrypt_device* private; } ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,char*) ;
 TYPE_1__* to_ap_dev (struct device*) ;

__attribute__((used)) static ssize_t zcrypt_type_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct zcrypt_device *zdev = to_ap_dev(dev)->private;
 return snprintf(buf, PAGE_SIZE, "%s\n", zdev->type_string);
}
