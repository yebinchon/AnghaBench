
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ov511 {scalar_t__ bclass; int i2c_lock; } ;


 scalar_t__ BCL_OV518 ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ov511_i2c_read_internal (struct usb_ov511*,unsigned char) ;
 int ov518_i2c_read_internal (struct usb_ov511*,unsigned char) ;

__attribute__((used)) static int
i2c_r(struct usb_ov511 *ov, unsigned char reg)
{
 int rc;

 mutex_lock(&ov->i2c_lock);

 if (ov->bclass == BCL_OV518)
  rc = ov518_i2c_read_internal(ov, reg);
 else
  rc = ov511_i2c_read_internal(ov, reg);

 mutex_unlock(&ov->i2c_lock);

 return rc;
}
