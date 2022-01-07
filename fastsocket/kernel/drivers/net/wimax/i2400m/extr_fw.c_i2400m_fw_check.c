
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2400m_bcf_hdr {unsigned int module_type; int size; int date; int module_vendor; int module_id; int header_version; int header_len; } ;
struct i2400m {int fw_name; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int d_printf (int,struct device*,char*,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,size_t,unsigned int,size_t) ;
 int dev_err (struct device*,char*,int ,unsigned int,...) ;
 struct device* i2400m_dev (struct i2400m*) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static
int i2400m_fw_check(struct i2400m *i2400m,
      const struct i2400m_bcf_hdr *bcf,
      size_t bcf_size)
{
 int result;
 struct device *dev = i2400m_dev(i2400m);
 unsigned module_type, header_len, major_version, minor_version,
  module_id, module_vendor, date, size;


 result = -EINVAL;
 if (bcf_size < sizeof(*bcf)) {
  dev_err(dev, "firmware %s too short: "
   "%zu B vs %zu (at least) expected\n",
   i2400m->fw_name, bcf_size, sizeof(*bcf));
  goto error;
 }

 module_type = bcf->module_type;
 header_len = sizeof(u32) * le32_to_cpu(bcf->header_len);
 major_version = le32_to_cpu(bcf->header_version) & 0xffff0000 >> 16;
 minor_version = le32_to_cpu(bcf->header_version) & 0x0000ffff;
 module_id = le32_to_cpu(bcf->module_id);
 module_vendor = le32_to_cpu(bcf->module_vendor);
 date = le32_to_cpu(bcf->date);
 size = sizeof(u32) * le32_to_cpu(bcf->size);

 if (bcf_size != size) {
  dev_err(dev, "firmware %s: bad size, got "
   "%zu B vs %u expected\n",
   i2400m->fw_name, bcf_size, size);
  goto error;
 }

 d_printf(2, dev, "type 0x%x id 0x%x vendor 0x%x; header v%u.%u (%zu B) "
   "date %08x (%zu B)\n",
   module_type, module_id, module_vendor,
   major_version, minor_version, (size_t) header_len,
   date, (size_t) size);

 if (module_type != 6) {
  dev_err(dev, "bad fw %s: unexpected module type 0x%x; "
   "aborting\n", i2400m->fw_name, module_type);
  goto error;
 }


 result = 0;
 if (module_vendor != 0x8086)
  dev_err(dev, "bad fw %s? unexpected vendor 0x%04x\n",
   i2400m->fw_name, module_vendor);
 if (date < 0x20080300)
  dev_err(dev, "bad fw %s? build date too old %08x\n",
   i2400m->fw_name, date);
error:
 return result;
}
