
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtdblk_dev {scalar_t__ cache_state; int cache_data; int cache_size; int cache_offset; struct mtd_info* mtd; } ;
struct mtd_info {int name; } ;


 int DEBUG (int ,char*,int ,int ,int ) ;
 int MTD_DEBUG_LEVEL2 ;
 scalar_t__ STATE_DIRTY ;
 scalar_t__ STATE_EMPTY ;
 int erase_write (struct mtd_info*,int ,int ,int ) ;

__attribute__((used)) static int write_cached_data (struct mtdblk_dev *mtdblk)
{
 struct mtd_info *mtd = mtdblk->mtd;
 int ret;

 if (mtdblk->cache_state != STATE_DIRTY)
  return 0;

 DEBUG(MTD_DEBUG_LEVEL2, "mtdblock: writing cached data for \"%s\" "
   "at 0x%lx, size 0x%x\n", mtd->name,
   mtdblk->cache_offset, mtdblk->cache_size);

 ret = erase_write (mtd, mtdblk->cache_offset,
      mtdblk->cache_size, mtdblk->cache_data);
 if (ret)
  return ret;
 mtdblk->cache_state = STATE_EMPTY;
 return 0;
}
