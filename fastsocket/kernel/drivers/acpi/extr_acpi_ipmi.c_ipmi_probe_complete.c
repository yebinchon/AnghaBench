
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ipmi_lock; } ;


 TYPE_1__ driver_data ;
 int ipmi_update_global_handler () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ipmi_probe_complete(void)
{
 mutex_lock(&driver_data.ipmi_lock);
 ipmi_update_global_handler();
 mutex_unlock(&driver_data.ipmi_lock);
}
