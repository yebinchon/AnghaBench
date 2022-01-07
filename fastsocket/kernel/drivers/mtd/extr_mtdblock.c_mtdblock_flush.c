
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtdblk_dev {TYPE_1__* mtd; int cache_mutex; } ;
struct mtd_blktrans_dev {size_t devnum; } ;
struct TYPE_2__ {int (* sync ) (TYPE_1__*) ;} ;


 struct mtdblk_dev** mtdblks ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (TYPE_1__*) ;
 int write_cached_data (struct mtdblk_dev*) ;

__attribute__((used)) static int mtdblock_flush(struct mtd_blktrans_dev *dev)
{
 struct mtdblk_dev *mtdblk = mtdblks[dev->devnum];

 mutex_lock(&mtdblk->cache_mutex);
 write_cached_data(mtdblk);
 mutex_unlock(&mtdblk->cache_mutex);

 if (mtdblk->mtd->sync)
  mtdblk->mtd->sync(mtdblk->mtd);
 return 0;
}
