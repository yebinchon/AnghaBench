
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct i2c_msg {int len; int * buf; int flags; int addr; } ;
struct TYPE_2__ {int demod_address; } ;
struct drx397xD_state {int i2c; TYPE_1__ config; } ;
typedef int a ;
typedef int __le32 ;
typedef int __le16 ;


 int EIO ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int _write16(struct drx397xD_state *s, __le32 i2c_adr, __le16 val)
{
 u8 a[6];
 int rc;
 struct i2c_msg msg = {
  .addr = s->config.demod_address,
  .flags = 0,
  .buf = a,
  .len = sizeof(a)
 };

 *(__le32 *)a = i2c_adr;
 *(__le16 *)&a[4] = val;

 rc = i2c_transfer(s->i2c, &msg, 1);
 if (rc != 1)
  return -EIO;

 return 0;
}
