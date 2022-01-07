
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct hpsb_host {struct device device; } ;


 int ARRAY_SIZE (int *) ;
 int HPSB_ERR (char*) ;
 scalar_t__ device_create_file (struct device*,int ) ;
 int * fw_host_attrs ;

__attribute__((used)) static void nodemgr_create_host_dev_files(struct hpsb_host *host)
{
 struct device *dev = &host->device;
 int i;

 for (i = 0; i < ARRAY_SIZE(fw_host_attrs); i++)
  if (device_create_file(dev, fw_host_attrs[i]))
   goto fail;
 return;
fail:
 HPSB_ERR("Failed to add sysfs attribute");
}
