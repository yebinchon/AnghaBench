
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int owner; } ;


 int ENOENT ;
 TYPE_1__* eadm_ops ;
 int eadm_ops_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int try_module_get (int ) ;

int scm_get_ref(void)
{
 int ret = 0;

 mutex_lock(&eadm_ops_mutex);
 if (!eadm_ops || !try_module_get(eadm_ops->owner))
  ret = -ENOENT;
 mutex_unlock(&eadm_ops_mutex);

 return ret;
}
