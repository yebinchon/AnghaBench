
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firmware {int dummy; } ;
struct device {int dummy; } ;


 int dev_dbg_f (struct device*,char*,char const*) ;
 int dev_err (struct device*,char*,char const*,int) ;
 int request_firmware (struct firmware const**,char const*,struct device*) ;

__attribute__((used)) static int request_fw_file(
 const struct firmware **fw, const char *name, struct device *device)
{
 int r;

 dev_dbg_f(device, "fw name %s\n", name);

 r = request_firmware(fw, name, device);
 if (r)
  dev_err(device,
         "Could not load firmware file %s. Error number %d\n",
         name, r);
 return r;
}
