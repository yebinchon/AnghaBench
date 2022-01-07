
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int handle; } ;
struct ehca_shca {TYPE_1__ ipz_hca_handle; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct ehca_shca* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static ssize_t ehca_show_adapter_handle(struct device *dev,
     struct device_attribute *attr,
     char *buf)
{
 struct ehca_shca *shca = dev_get_drvdata(dev);

 return sprintf(buf, "%llx\n", shca->ipz_hca_handle.handle);

}
