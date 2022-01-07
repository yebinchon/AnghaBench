
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2400m_bcf_hdr {int dummy; } ;
struct i2400m {char** bus_fw_names; char const* fw_name; } ;
struct firmware {int size; scalar_t__ data; } ;
struct device {int dummy; } ;
typedef enum i2400m_bri { ____Placeholder_i2400m_bri } i2400m_bri ;


 int ENOENT ;
 int d_fnend (int,struct device*,char*,struct i2400m*,int) ;
 int d_fnstart (int,struct device*,char*,struct i2400m*) ;
 int dev_err (struct device*,char*,...) ;
 struct device* i2400m_dev (struct i2400m*) ;
 int i2400m_fw_check (struct i2400m*,struct i2400m_bcf_hdr const*,int ) ;
 int i2400m_fw_dnload (struct i2400m*,struct i2400m_bcf_hdr const*,int ,int) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char const*,struct device*) ;

int i2400m_dev_bootstrap(struct i2400m *i2400m, enum i2400m_bri flags)
{
 int ret = 0, itr = 0;
 struct device *dev = i2400m_dev(i2400m);
 const struct firmware *fw;
 const struct i2400m_bcf_hdr *bcf;
 const char *fw_name;

 d_fnstart(5, dev, "(i2400m %p)\n", i2400m);


 itr = 0;
 while(1) {
  fw_name = i2400m->bus_fw_names[itr];
  if (fw_name == ((void*)0)) {
   dev_err(dev, "Could not find a usable firmware image\n");
   ret = -ENOENT;
   goto error_no_fw;
  }
  ret = request_firmware(&fw, fw_name, dev);
  if (ret == 0)
   break;
  if (ret < 0)
   dev_err(dev, "fw %s: cannot load file: %d\n",
    fw_name, ret);
  itr++;
 }

 bcf = (void *) fw->data;
 i2400m->fw_name = fw_name;
 ret = i2400m_fw_check(i2400m, bcf, fw->size);
 if (ret < 0)
  goto error_fw_bad;
 ret = i2400m_fw_dnload(i2400m, bcf, fw->size, flags);
error_fw_bad:
 release_firmware(fw);
error_no_fw:
 d_fnend(5, dev, "(i2400m %p) = %d\n", i2400m, ret);
 return ret;
}
