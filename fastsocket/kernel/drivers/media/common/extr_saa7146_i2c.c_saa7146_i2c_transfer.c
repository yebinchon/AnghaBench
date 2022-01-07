
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * cpu_addr; } ;
struct saa7146_dev {scalar_t__ revision; int i2c_lock; TYPE_2__* ext; TYPE_1__ d_i2c; } ;
struct i2c_msg {int dummy; } ;
typedef int __le32 ;
struct TYPE_4__ {int flags; } ;


 int DEB_I2C (char*) ;
 int EREMOTEIO ;
 int ERESTARTSYS ;
 int INFO (char*) ;
 int SAA7146_I2C_SHORT_DELAY ;
 int SAA7146_USE_I2C_IRQ ;
 int msleep (int) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ saa7146_i2c_msg_cleanup (struct i2c_msg const*,int,int *) ;
 int saa7146_i2c_msg_prepare (struct i2c_msg const*,int,int *) ;
 int saa7146_i2c_reset (struct saa7146_dev*) ;
 scalar_t__ saa7146_i2c_writeout (struct saa7146_dev*,int *,int) ;

__attribute__((used)) static int saa7146_i2c_transfer(struct saa7146_dev *dev, const struct i2c_msg *msgs, int num, int retries)
{
 int i = 0, count = 0;
 __le32 *buffer = dev->d_i2c.cpu_addr;
 int err = 0;
 int short_delay = 0;

 if (mutex_lock_interruptible(&dev->i2c_lock))
  return -ERESTARTSYS;

 for(i=0;i<num;i++) {
  DEB_I2C(("msg:%d/%d\n",i+1,num));
 }


 count = saa7146_i2c_msg_prepare(msgs, num, buffer);
 if ( 0 > count ) {
  err = -1;
  goto out;
 }

 if ( count > 3 || 0 != (SAA7146_I2C_SHORT_DELAY & dev->ext->flags) )
  short_delay = 1;

 do {

  err = saa7146_i2c_reset(dev);
  if ( 0 > err ) {
   DEB_I2C(("could not reset i2c-device.\n"));
   goto out;
  }


  for(i = 0; i < count; i++) {
   err = saa7146_i2c_writeout(dev, &buffer[i], short_delay);
   if ( 0 != err) {
    if (-EREMOTEIO == err && 0 != (SAA7146_USE_I2C_IRQ & dev->ext->flags))
     goto out;
    DEB_I2C(("error while sending message(s). starting again.\n"));
    break;
   }
  }
  if( 0 == err ) {
   err = num;
   break;
  }


  msleep(10);

 } while (err != num && retries--);


 if (err != num)
  goto out;


 if ( 0 != saa7146_i2c_msg_cleanup(msgs, num, buffer)) {
  DEB_I2C(("could not cleanup i2c-message.\n"));
  err = -1;
  goto out;
 }


 DEB_I2C(("transmission successful. (msg:%d).\n",err));
out:


 if( 0 == dev->revision ) {
  __le32 zero = 0;
  saa7146_i2c_reset(dev);
  if( 0 != saa7146_i2c_writeout(dev, &zero, short_delay)) {
   INFO(("revision 0 error. this should never happen.\n"));
  }
 }

 mutex_unlock(&dev->i2c_lock);
 return err;
}
