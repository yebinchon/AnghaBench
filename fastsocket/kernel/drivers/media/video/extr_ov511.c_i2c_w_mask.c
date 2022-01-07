
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ov511 {int i2c_lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ov51x_i2c_write_mask_internal (struct usb_ov511*,unsigned char,unsigned char,unsigned char) ;

__attribute__((used)) static int
i2c_w_mask(struct usb_ov511 *ov,
    unsigned char reg,
    unsigned char value,
    unsigned char mask)
{
 int rc;

 mutex_lock(&ov->i2c_lock);
 rc = ov51x_i2c_write_mask_internal(ov, reg, value, mask);
 mutex_unlock(&ov->i2c_lock);

 return rc;
}
