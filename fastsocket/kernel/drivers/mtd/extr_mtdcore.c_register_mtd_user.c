
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_notifier {int (* add ) (scalar_t__) ;int list; } ;


 int MAX_MTD_DEVICES ;
 int THIS_MODULE ;
 int __module_get (int ) ;
 int list_add (int *,int *) ;
 int mtd_notifiers ;
 scalar_t__* mtd_table ;
 int mtd_table_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (scalar_t__) ;

void register_mtd_user (struct mtd_notifier *new)
{
 int i;

 mutex_lock(&mtd_table_mutex);

 list_add(&new->list, &mtd_notifiers);

  __module_get(THIS_MODULE);

 for (i=0; i< MAX_MTD_DEVICES; i++)
  if (mtd_table[i])
   new->add(mtd_table[i]);

 mutex_unlock(&mtd_table_mutex);
}
