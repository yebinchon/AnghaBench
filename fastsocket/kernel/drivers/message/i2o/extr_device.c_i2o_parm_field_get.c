
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct i2o_device {int dummy; } ;
typedef int s16 ;
typedef int opblk ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int I2O_CMD_UTIL_PARAMS_GET ;
 int I2O_PARAMS_FIELD_GET ;
 int cpu_to_le32 (int) ;
 int i2o_parm_issue (struct i2o_device*,int ,int *,int,int *,int) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 int memcpy (void*,int *,int) ;

int i2o_parm_field_get(struct i2o_device *i2o_dev, int group, int field,
         void *buf, int buflen)
{
 u32 opblk[] = { cpu_to_le32(0x00000001),
  cpu_to_le32((u16) group << 16 | I2O_PARAMS_FIELD_GET),
  cpu_to_le32((s16) field << 16 | 0x00000001)
 };
 u8 *resblk;
 int rc;

 resblk = kmalloc(buflen + 8, GFP_KERNEL);
 if (!resblk)
  return -ENOMEM;

 rc = i2o_parm_issue(i2o_dev, I2O_CMD_UTIL_PARAMS_GET, opblk,
       sizeof(opblk), resblk, buflen + 8);

 memcpy(buf, resblk + 8, buflen);

 kfree(resblk);

 return rc;
}
