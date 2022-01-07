
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int v ;
typedef int u8 ;
struct i2c_msg {int len; int * buf; int flags; int addr; } ;
struct TYPE_2__ {int demod_address; } ;
struct drx397xD_state {int i2c; TYPE_1__ config; } ;
typedef int a ;
typedef int __le32 ;
typedef int __le16 ;


 int EIO ;
 int I2C_M_RD ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int _read16(struct drx397xD_state *s, __le32 i2c_adr)
{
 int rc;
 u8 a[4];
 __le16 v;
 struct i2c_msg msg[2] = {
  {
   .addr = s->config.demod_address,
   .flags = 0,
   .buf = a,
   .len = sizeof(a)
  }, {
   .addr = s->config.demod_address,
   .flags = I2C_M_RD,
   .buf = (u8 *)&v,
   .len = sizeof(v)
  }
 };

 *(__le32 *) a = i2c_adr;

 rc = i2c_transfer(s->i2c, msg, 2);
 if (rc != 2)
  return -EIO;

 return le16_to_cpu(v);
}
