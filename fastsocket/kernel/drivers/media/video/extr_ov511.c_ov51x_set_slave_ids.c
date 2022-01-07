
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ov511 {int i2c_lock; } ;


 int OV511_RESET_NOREGS ;
 int i2c_set_slave_internal (struct usb_ov511*,unsigned char) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ov51x_reset (struct usb_ov511*,int ) ;

__attribute__((used)) static int
ov51x_set_slave_ids(struct usb_ov511 *ov, unsigned char sid)
{
 int rc;

 mutex_lock(&ov->i2c_lock);

 rc = i2c_set_slave_internal(ov, sid);
 if (rc < 0)
  goto out;


 rc = ov51x_reset(ov, OV511_RESET_NOREGS);
out:
 mutex_unlock(&ov->i2c_lock);
 return rc;
}
