
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct bmc_device {scalar_t__* guid; } ;
typedef int ssize_t ;


 struct bmc_device* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int,char*,long long,long long) ;

__attribute__((used)) static ssize_t guid_show(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct bmc_device *bmc = dev_get_drvdata(dev);

 return snprintf(buf, 100, "%Lx%Lx\n",
   (long long) bmc->guid[0],
   (long long) bmc->guid[8]);
}
