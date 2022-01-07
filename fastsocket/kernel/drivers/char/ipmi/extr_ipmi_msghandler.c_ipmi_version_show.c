
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct bmc_device {int id; } ;
typedef int ssize_t ;


 struct bmc_device* dev_get_drvdata (struct device*) ;
 int ipmi_version_major (int *) ;
 int ipmi_version_minor (int *) ;
 int snprintf (char*,int,char*,int,int) ;

__attribute__((used)) static ssize_t ipmi_version_show(struct device *dev,
     struct device_attribute *attr,
     char *buf)
{
 struct bmc_device *bmc = dev_get_drvdata(dev);

 return snprintf(buf, 20, "%u.%u\n",
   ipmi_version_major(&bmc->id),
   ipmi_version_minor(&bmc->id));
}
