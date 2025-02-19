
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {char* AdapterTypeText; } ;
struct aac_dev {size_t cardtype; TYPE_1__ supplement_adapter_info; } ;
typedef int ssize_t ;
struct TYPE_6__ {char* model; } ;
struct TYPE_5__ {scalar_t__ hostdata; } ;


 int PAGE_SIZE ;
 TYPE_3__* aac_drivers ;
 TYPE_2__* class_to_shost (struct device*) ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static ssize_t aac_show_model(struct device *device,
         struct device_attribute *attr, char *buf)
{
 struct aac_dev *dev = (struct aac_dev*)class_to_shost(device)->hostdata;
 int len;

 if (dev->supplement_adapter_info.AdapterTypeText[0]) {
  char * cp = dev->supplement_adapter_info.AdapterTypeText;
  while (*cp && *cp != ' ')
   ++cp;
  while (*cp == ' ')
   ++cp;
  len = snprintf(buf, PAGE_SIZE, "%s\n", cp);
 } else
  len = snprintf(buf, PAGE_SIZE, "%s\n",
    aac_drivers[dev->cardtype].model);
 return len;
}
