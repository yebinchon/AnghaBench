
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct aac_dev {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {scalar_t__ hostdata; } ;


 int CAP_SYS_ADMIN ;
 int EACCES ;
 int aac_reset_adapter (struct aac_dev*,int) ;
 int capable (int ) ;
 TYPE_1__* class_to_shost (struct device*) ;

__attribute__((used)) static ssize_t aac_store_reset_adapter(struct device *device,
           struct device_attribute *attr,
           const char *buf, size_t count)
{
 int retval = -EACCES;

 if (!capable(CAP_SYS_ADMIN))
  return retval;
 retval = aac_reset_adapter((struct aac_dev*)class_to_shost(device)->hostdata, buf[0] == '!');
 if (retval >= 0)
  retval = count;
 return retval;
}
