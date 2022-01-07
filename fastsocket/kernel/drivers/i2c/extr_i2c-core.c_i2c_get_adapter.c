
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int owner; } ;


 int core_lock ;
 int i2c_adapter_idr ;
 struct i2c_adapter* idr_find (int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int try_module_get (int ) ;

struct i2c_adapter* i2c_get_adapter(int id)
{
 struct i2c_adapter *adapter;

 mutex_lock(&core_lock);
 adapter = idr_find(&i2c_adapter_idr, id);
 if (adapter && !try_module_get(adapter->owner))
  adapter = ((void*)0);

 mutex_unlock(&core_lock);
 return adapter;
}
