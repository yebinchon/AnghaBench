
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int adb_handler_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int try_handler_change (int,int) ;

int
adb_try_handler_change(int address, int new_id)
{
 int ret;

 mutex_lock(&adb_handler_mutex);
 ret = try_handler_change(address, new_id);
 mutex_unlock(&adb_handler_mutex);
 return ret;
}
