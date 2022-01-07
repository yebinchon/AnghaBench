
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pca9532_data {int update_lock; int * psc; int * pwm; } ;
struct i2c_client {int dummy; } ;


 int PCA9532_REG_PSC (int) ;
 int PCA9532_REG_PWM (int) ;
 struct pca9532_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int pca9532_setpwm(struct i2c_client *client, int pwm)
{
 struct pca9532_data *data = i2c_get_clientdata(client);
 mutex_lock(&data->update_lock);
 i2c_smbus_write_byte_data(client, PCA9532_REG_PWM(pwm),
  data->pwm[pwm]);
 i2c_smbus_write_byte_data(client, PCA9532_REG_PSC(pwm),
  data->psc[pwm]);
 mutex_unlock(&data->update_lock);
 return 0;
}
