
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtdblk_dev {unsigned int cache_size; scalar_t__ cache_state; unsigned long cache_offset; int cache_data; struct mtd_info* mtd; } ;
struct mtd_info {int (* write ) (struct mtd_info*,unsigned long,int,size_t*,char const*) ;int (* read ) (struct mtd_info*,unsigned long,unsigned int,size_t*,int ) ;int name; } ;


 int DEBUG (int ,char*,int ,unsigned long,int) ;
 int EIO ;
 int MTD_DEBUG_LEVEL2 ;
 scalar_t__ STATE_CLEAN ;
 scalar_t__ STATE_DIRTY ;
 scalar_t__ STATE_EMPTY ;
 int erase_write (struct mtd_info*,unsigned long,unsigned int,char const*) ;
 int memcpy (int ,char const*,unsigned int) ;
 int stub1 (struct mtd_info*,unsigned long,int,size_t*,char const*) ;
 int stub2 (struct mtd_info*,unsigned long,unsigned int,size_t*,int ) ;
 int write_cached_data (struct mtdblk_dev*) ;

__attribute__((used)) static int do_cached_write (struct mtdblk_dev *mtdblk, unsigned long pos,
       int len, const char *buf)
{
 struct mtd_info *mtd = mtdblk->mtd;
 unsigned int sect_size = mtdblk->cache_size;
 size_t retlen;
 int ret;

 DEBUG(MTD_DEBUG_LEVEL2, "mtdblock: write on \"%s\" at 0x%lx, size 0x%x\n",
  mtd->name, pos, len);

 if (!sect_size)
  return mtd->write(mtd, pos, len, &retlen, buf);

 while (len > 0) {
  unsigned long sect_start = (pos/sect_size)*sect_size;
  unsigned int offset = pos - sect_start;
  unsigned int size = sect_size - offset;
  if( size > len )
   size = len;

  if (size == sect_size) {





   ret = erase_write (mtd, pos, size, buf);
   if (ret)
    return ret;
  } else {


   if (mtdblk->cache_state == STATE_DIRTY &&
       mtdblk->cache_offset != sect_start) {
    ret = write_cached_data(mtdblk);
    if (ret)
     return ret;
   }

   if (mtdblk->cache_state == STATE_EMPTY ||
       mtdblk->cache_offset != sect_start) {

    mtdblk->cache_state = STATE_EMPTY;
    ret = mtd->read(mtd, sect_start, sect_size,
      &retlen, mtdblk->cache_data);
    if (ret)
     return ret;
    if (retlen != sect_size)
     return -EIO;

    mtdblk->cache_offset = sect_start;
    mtdblk->cache_size = sect_size;
    mtdblk->cache_state = STATE_CLEAN;
   }


   memcpy (mtdblk->cache_data + offset, buf, size);
   mtdblk->cache_state = STATE_DIRTY;
  }

  buf += size;
  pos += size;
  len -= size;
 }

 return 0;
}
