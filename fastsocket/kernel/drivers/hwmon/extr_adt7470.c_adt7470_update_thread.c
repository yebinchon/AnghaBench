
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct adt7470_data {int auto_update_stop; int auto_update_interval; int lock; } ;


 int adt7470_read_temperatures (struct i2c_client*,struct adt7470_data*) ;
 int complete_all (int *) ;
 struct adt7470_data* i2c_get_clientdata (struct i2c_client*) ;
 scalar_t__ kthread_should_stop () ;
 int msleep_interruptible (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int adt7470_update_thread(void *p)
{
 struct i2c_client *client = p;
 struct adt7470_data *data = i2c_get_clientdata(client);

 while (!kthread_should_stop()) {
  mutex_lock(&data->lock);
  adt7470_read_temperatures(client, data);
  mutex_unlock(&data->lock);
  if (kthread_should_stop())
   break;
  msleep_interruptible(data->auto_update_interval);
 }

 complete_all(&data->auto_update_stop);
 return 0;
}
