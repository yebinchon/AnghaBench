
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eadm_ops {int dummy; } ;


 struct eadm_ops* eadm_ops ;
 int eadm_ops_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void register_eadm_ops(struct eadm_ops *ops)
{
 mutex_lock(&eadm_ops_mutex);
 eadm_ops = ops;
 mutex_unlock(&eadm_ops_mutex);
}
