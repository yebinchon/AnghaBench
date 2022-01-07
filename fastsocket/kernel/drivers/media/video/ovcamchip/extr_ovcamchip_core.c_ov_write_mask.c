
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int ov_read (struct i2c_client*,unsigned char,unsigned char*) ;
 int ov_write (struct i2c_client*,unsigned char,unsigned char) ;

int ov_write_mask(struct i2c_client *c,
    unsigned char reg,
    unsigned char value,
    unsigned char mask)
{
 int rc;
 unsigned char oldval, newval;

 if (mask == 0xff) {
  newval = value;
 } else {
  rc = ov_read(c, reg, &oldval);
  if (rc < 0)
   return rc;

  oldval &= (~mask);
  value &= mask;
  newval = oldval | value;
 }

 return ov_write(c, reg, newval);
}
