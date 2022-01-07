
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtdblk_dev {int cache_data; TYPE_1__* mtd; int count; int cache_mutex; } ;
struct mtd_blktrans_dev {int devnum; } ;
struct TYPE_2__ {int (* sync ) (TYPE_1__*) ;} ;


 int DEBUG (int ,char*) ;
 int MTD_DEBUG_LEVEL1 ;
 int kfree (struct mtdblk_dev*) ;
 struct mtdblk_dev** mtdblks ;
 int mtdblks_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (TYPE_1__*) ;
 int vfree (int ) ;
 int write_cached_data (struct mtdblk_dev*) ;

__attribute__((used)) static int mtdblock_release(struct mtd_blktrans_dev *mbd)
{
 int dev = mbd->devnum;
 struct mtdblk_dev *mtdblk = mtdblks[dev];

    DEBUG(MTD_DEBUG_LEVEL1, "mtdblock_release\n");

 mutex_lock(&mtdblks_lock);

 mutex_lock(&mtdblk->cache_mutex);
 write_cached_data(mtdblk);
 mutex_unlock(&mtdblk->cache_mutex);

 if (!--mtdblk->count) {

  mtdblks[dev] = ((void*)0);
  if (mtdblk->mtd->sync)
   mtdblk->mtd->sync(mtdblk->mtd);
  vfree(mtdblk->cache_data);
  kfree(mtdblk);
 }

 mutex_unlock(&mtdblks_lock);

 DEBUG(MTD_DEBUG_LEVEL1, "ok\n");

 return 0;
}
