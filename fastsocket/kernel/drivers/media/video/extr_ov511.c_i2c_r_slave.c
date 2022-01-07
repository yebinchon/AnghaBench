
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ov511 {scalar_t__ bclass; unsigned char primary_i2c_slave; int i2c_lock; } ;


 scalar_t__ BCL_OV518 ;
 int err (char*) ;
 int i2c_set_slave_internal (struct usb_ov511*,unsigned char) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ov511_i2c_read_internal (struct usb_ov511*,unsigned char) ;
 int ov518_i2c_read_internal (struct usb_ov511*,unsigned char) ;

__attribute__((used)) static int
i2c_r_slave(struct usb_ov511 *ov,
     unsigned char slave,
     unsigned char reg)
{
 int rc;

 mutex_lock(&ov->i2c_lock);


 rc = i2c_set_slave_internal(ov, slave);
 if (rc < 0)
  goto out;

 if (ov->bclass == BCL_OV518)
  rc = ov518_i2c_read_internal(ov, reg);
 else
  rc = ov511_i2c_read_internal(ov, reg);

out:

 if (i2c_set_slave_internal(ov, ov->primary_i2c_slave) < 0)
  err("Couldn't restore primary I2C slave");

 mutex_unlock(&ov->i2c_lock);
 return rc;
}
