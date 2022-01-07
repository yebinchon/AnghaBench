
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_blktrans_dev {int blkcore_priv; int list; } ;


 int BUG () ;
 int del_gendisk (int ) ;
 int list_del (int *) ;
 int mtd_table_mutex ;
 scalar_t__ mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 int put_disk (int ) ;

int del_mtd_blktrans_dev(struct mtd_blktrans_dev *old)
{
 if (mutex_trylock(&mtd_table_mutex)) {
  mutex_unlock(&mtd_table_mutex);
  BUG();
 }

 list_del(&old->list);

 del_gendisk(old->blkcore_priv);
 put_disk(old->blkcore_priv);

 return 0;
}
