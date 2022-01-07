
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int nr; } ;


 int EAGAIN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int __i2c_first_dynamic_bus_num ;
 int core_lock ;
 int i2c_adapter_idr ;
 int i2c_register_adapter (struct i2c_adapter*) ;
 int idr_get_new_above (int *,struct i2c_adapter*,int ,int*) ;
 scalar_t__ idr_pre_get (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int i2c_add_adapter(struct i2c_adapter *adapter)
{
 int id, res = 0;

retry:
 if (idr_pre_get(&i2c_adapter_idr, GFP_KERNEL) == 0)
  return -ENOMEM;

 mutex_lock(&core_lock);

 res = idr_get_new_above(&i2c_adapter_idr, adapter,
    __i2c_first_dynamic_bus_num, &id);
 mutex_unlock(&core_lock);

 if (res < 0) {
  if (res == -EAGAIN)
   goto retry;
  return res;
 }

 adapter->nr = id;
 return i2c_register_adapter(adapter);
}
