
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int usecount; int owner; int (* put_device ) (struct mtd_info*) ;} ;


 int BUG_ON (int) ;
 int module_put (int ) ;
 int mtd_table_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct mtd_info*) ;

void put_mtd_device(struct mtd_info *mtd)
{
 int c;

 mutex_lock(&mtd_table_mutex);
 c = --mtd->usecount;
 if (mtd->put_device)
  mtd->put_device(mtd);
 mutex_unlock(&mtd_table_mutex);
 BUG_ON(c < 0);

 module_put(mtd->owner);
}
