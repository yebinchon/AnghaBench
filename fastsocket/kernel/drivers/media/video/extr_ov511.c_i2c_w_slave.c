
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ov511 {unsigned char primary_i2c_slave; int i2c_lock; } ;


 int err (char*) ;
 int i2c_set_slave_internal (struct usb_ov511*,unsigned char) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ov51x_i2c_write_mask_internal (struct usb_ov511*,unsigned char,unsigned char,unsigned char) ;

__attribute__((used)) static int
i2c_w_slave(struct usb_ov511 *ov,
     unsigned char slave,
     unsigned char reg,
     unsigned char value,
     unsigned char mask)
{
 int rc = 0;

 mutex_lock(&ov->i2c_lock);


 rc = i2c_set_slave_internal(ov, slave);
 if (rc < 0)
  goto out;

 rc = ov51x_i2c_write_mask_internal(ov, reg, value, mask);

out:

 if (i2c_set_slave_internal(ov, ov->primary_i2c_slave) < 0)
  err("Couldn't restore primary I2C slave");

 mutex_unlock(&ov->i2c_lock);
 return rc;
}
