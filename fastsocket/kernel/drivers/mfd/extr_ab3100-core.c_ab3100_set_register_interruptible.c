
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ab3100 {int access_mutex; int dev; int i2c_client; } ;


 int EIO ;
 int dev_err (int ,char*,int) ;
 int i2c_master_send (int ,int *,int) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

int ab3100_set_register_interruptible(struct ab3100 *ab3100, u8 reg, u8 regval)
{
 u8 regandval[2] = {reg, regval};
 int err;

 err = mutex_lock_interruptible(&ab3100->access_mutex);
 if (err)
  return err;






 err = i2c_master_send(ab3100->i2c_client, regandval, 2);
 if (err < 0) {
  dev_err(ab3100->dev,
   "write error (write register): %d\n",
   err);
 } else if (err != 2) {
  dev_err(ab3100->dev,
   "write error (write register) "
   "%d bytes transferred (expected 2)\n",
   err);
  err = -EIO;
 } else {

  err = 0;
 }
 mutex_unlock(&ab3100->access_mutex);
 return err;
}
