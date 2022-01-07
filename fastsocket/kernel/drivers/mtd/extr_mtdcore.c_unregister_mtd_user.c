
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_notifier {int list; int (* remove ) (scalar_t__) ;} ;


 int MAX_MTD_DEVICES ;
 int THIS_MODULE ;
 int list_del (int *) ;
 int module_put (int ) ;
 scalar_t__* mtd_table ;
 int mtd_table_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (scalar_t__) ;

int unregister_mtd_user (struct mtd_notifier *old)
{
 int i;

 mutex_lock(&mtd_table_mutex);

 module_put(THIS_MODULE);

 for (i=0; i< MAX_MTD_DEVICES; i++)
  if (mtd_table[i])
   old->remove(mtd_table[i]);

 list_del(&old->list);
 mutex_unlock(&mtd_table_mutex);
 return 0;
}
