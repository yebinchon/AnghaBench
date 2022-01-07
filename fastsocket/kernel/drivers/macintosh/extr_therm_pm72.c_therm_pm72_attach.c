
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int name; } ;


 int DBG (char*) ;
 scalar_t__ attach_fcu () ;
 scalar_t__ create_control_loops () ;
 int driver_lock ;
 struct i2c_adapter* k2 ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ rackmac ;
 int start_control_loops () ;
 scalar_t__ state ;
 scalar_t__ state_attached ;
 scalar_t__ state_attaching ;
 scalar_t__ state_detached ;
 int strcmp (int ,char*) ;
 struct i2c_adapter* u3_0 ;
 struct i2c_adapter* u3_1 ;

__attribute__((used)) static int therm_pm72_attach(struct i2c_adapter *adapter)
{
 mutex_lock(&driver_lock);


 if (state == state_detached)
  state = state_attaching;
 if (state != state_attaching) {
  mutex_unlock(&driver_lock);
  return 0;
 }


 if (u3_0 == ((void*)0) && !strcmp(adapter->name, "u3 0")) {
  u3_0 = adapter;
  DBG("found U3-0\n");
  if (k2 || !rackmac)
   if (create_control_loops())
    u3_0 = ((void*)0);
 } else if (u3_1 == ((void*)0) && !strcmp(adapter->name, "u3 1")) {
  u3_1 = adapter;
  DBG("found U3-1, attaching FCU\n");
  if (attach_fcu())
   u3_1 = ((void*)0);
 } else if (k2 == ((void*)0) && !strcmp(adapter->name, "mac-io 0")) {
  k2 = adapter;
  DBG("Found K2\n");
  if (u3_0 && rackmac)
   if (create_control_loops())
    k2 = ((void*)0);
 }

 if (u3_0 != ((void*)0) && u3_1 != ((void*)0) && (k2 || !rackmac)) {
  DBG("everything up, starting control loops\n");
  state = state_attached;
  start_control_loops();
 }
 mutex_unlock(&driver_lock);

 return 0;
}
