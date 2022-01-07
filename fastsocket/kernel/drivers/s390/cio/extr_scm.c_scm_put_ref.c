
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int owner; } ;


 TYPE_1__* eadm_ops ;
 int eadm_ops_mutex ;
 int module_put (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void scm_put_ref(void)
{
 mutex_lock(&eadm_ops_mutex);
 module_put(eadm_ops->owner);
 mutex_unlock(&eadm_ops_mutex);
}
