
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct appldata_ops {int ctl_table; int sysctl_header; int list; } ;


 int appldata_ops_mutex ;
 int kfree (int ) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int unregister_sysctl_table (int ) ;

void appldata_unregister_ops(struct appldata_ops *ops)
{
 mutex_lock(&appldata_ops_mutex);
 list_del(&ops->list);
 mutex_unlock(&appldata_ops_mutex);
 unregister_sysctl_table(ops->sysctl_header);
 kfree(ops->ctl_table);
}
