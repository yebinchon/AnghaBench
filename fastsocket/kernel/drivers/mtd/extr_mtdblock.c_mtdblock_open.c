
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtdblk_dev {int count; int * cache_data; struct mtd_info* mtd; scalar_t__ cache_size; int cache_state; int cache_mutex; } ;
struct mtd_info {int flags; scalar_t__ erasesize; } ;
struct mtd_blktrans_dev {int devnum; struct mtd_info* mtd; } ;


 int DEBUG (int ,char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MTD_DEBUG_LEVEL1 ;
 int MTD_NO_ERASE ;
 int STATE_EMPTY ;
 struct mtdblk_dev* kzalloc (int,int ) ;
 struct mtdblk_dev** mtdblks ;
 int mtdblks_lock ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int mtdblock_open(struct mtd_blktrans_dev *mbd)
{
 struct mtdblk_dev *mtdblk;
 struct mtd_info *mtd = mbd->mtd;
 int dev = mbd->devnum;

 DEBUG(MTD_DEBUG_LEVEL1,"mtdblock_open\n");

 mutex_lock(&mtdblks_lock);
 if (mtdblks[dev]) {
  mtdblks[dev]->count++;
  mutex_unlock(&mtdblks_lock);
  return 0;
 }


 mtdblk = kzalloc(sizeof(struct mtdblk_dev), GFP_KERNEL);
 if (!mtdblk) {
  mutex_unlock(&mtdblks_lock);
  return -ENOMEM;
 }

 mtdblk->count = 1;
 mtdblk->mtd = mtd;

 mutex_init(&mtdblk->cache_mutex);
 mtdblk->cache_state = STATE_EMPTY;
 if ( !(mtdblk->mtd->flags & MTD_NO_ERASE) && mtdblk->mtd->erasesize) {
  mtdblk->cache_size = mtdblk->mtd->erasesize;
  mtdblk->cache_data = ((void*)0);
 }

 mtdblks[dev] = mtdblk;
 mutex_unlock(&mtdblks_lock);

 DEBUG(MTD_DEBUG_LEVEL1, "ok\n");

 return 0;
}
