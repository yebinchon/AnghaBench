
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int original_address; int handler_id; } ;


 TYPE_1__* adb_handler ;
 int adb_handler_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int
adb_get_infos(int address, int *original_address, int *handler_id)
{
 mutex_lock(&adb_handler_mutex);
 *original_address = adb_handler[address].original_address;
 *handler_id = adb_handler[address].handler_id;
 mutex_unlock(&adb_handler_mutex);

 return (*original_address != 0);
}
