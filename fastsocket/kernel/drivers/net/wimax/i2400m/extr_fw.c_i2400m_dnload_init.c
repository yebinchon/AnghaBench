
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2400m_bcf_hdr {int module_id; } ;
struct i2400m {scalar_t__ sboot; int fw_name; } ;
struct device {int dummy; } ;


 int ERESTARTSYS ;
 int I2400M_BCF_MOD_ID_POKES ;
 int dev_err (struct device*,char*,int ,int) ;
 struct device* i2400m_dev (struct i2400m*) ;
 int i2400m_dnload_init_nonsigned (struct i2400m*) ;
 int i2400m_dnload_init_signed (struct i2400m*,struct i2400m_bcf_hdr const*) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static
int i2400m_dnload_init(struct i2400m *i2400m, const struct i2400m_bcf_hdr *bcf)
{
 int result;
 struct device *dev = i2400m_dev(i2400m);
 u32 module_id = le32_to_cpu(bcf->module_id);

 if (i2400m->sboot == 0
     && (module_id & I2400M_BCF_MOD_ID_POKES) == 0) {

  result = i2400m_dnload_init_nonsigned(i2400m);
  if (result == -ERESTARTSYS)
   return result;
  if (result < 0)
   dev_err(dev, "fw %s: non-signed download "
    "initialization failed: %d\n",
    i2400m->fw_name, result);
 } else if (i2400m->sboot == 0
   && (module_id & I2400M_BCF_MOD_ID_POKES)) {

  result = 0;
 } else {
  result = i2400m_dnload_init_signed(i2400m, bcf);
  if (result == -ERESTARTSYS)
   return result;
  if (result < 0)
   dev_err(dev, "fw %s: signed boot download "
    "initialization failed: %d\n",
    i2400m->fw_name, result);
 }
 return result;
}
