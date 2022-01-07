
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {struct i2c_adapter* adapter; } ;
struct i2c_adapter {int name; } ;


 int DBG (char*) ;
 int detach_fcu () ;
 int dispose_control_loops () ;
 int driver_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ state ;
 scalar_t__ state_detached ;
 scalar_t__ state_detaching ;
 int stop_control_loops () ;
 int strcmp (int ,char*) ;
 int * u3_0 ;
 int * u3_1 ;

__attribute__((used)) static int therm_pm72_remove(struct i2c_client *client)
{
 struct i2c_adapter *adapter = client->adapter;

 mutex_lock(&driver_lock);

 if (state != state_detached)
  state = state_detaching;


 DBG("stopping control loops\n");
 mutex_unlock(&driver_lock);
 stop_control_loops();
 mutex_lock(&driver_lock);

 if (u3_0 != ((void*)0) && !strcmp(adapter->name, "u3 0")) {
  DBG("lost U3-0, disposing control loops\n");
  dispose_control_loops();
  u3_0 = ((void*)0);
 }

 if (u3_1 != ((void*)0) && !strcmp(adapter->name, "u3 1")) {
  DBG("lost U3-1, detaching FCU\n");
  detach_fcu();
  u3_1 = ((void*)0);
 }
 if (u3_0 == ((void*)0) && u3_1 == ((void*)0))
  state = state_detached;

 mutex_unlock(&driver_lock);

 return 0;
}
