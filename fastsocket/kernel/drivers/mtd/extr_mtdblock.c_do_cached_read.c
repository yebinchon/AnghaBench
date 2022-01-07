
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtdblk_dev {unsigned int cache_size; scalar_t__ cache_state; unsigned long cache_offset; scalar_t__ cache_data; struct mtd_info* mtd; } ;
struct mtd_info {int (* read ) (struct mtd_info*,unsigned long,int,size_t*,char*) ;int name; } ;


 int DEBUG (int ,char*,int ,unsigned long,int) ;
 int EIO ;
 int MTD_DEBUG_LEVEL2 ;
 scalar_t__ STATE_EMPTY ;
 int memcpy (char*,scalar_t__,unsigned int) ;
 int stub1 (struct mtd_info*,unsigned long,int,size_t*,char*) ;
 int stub2 (struct mtd_info*,unsigned long,unsigned int,size_t*,char*) ;

__attribute__((used)) static int do_cached_read (struct mtdblk_dev *mtdblk, unsigned long pos,
      int len, char *buf)
{
 struct mtd_info *mtd = mtdblk->mtd;
 unsigned int sect_size = mtdblk->cache_size;
 size_t retlen;
 int ret;

 DEBUG(MTD_DEBUG_LEVEL2, "mtdblock: read on \"%s\" at 0x%lx, size 0x%x\n",
   mtd->name, pos, len);

 if (!sect_size)
  return mtd->read(mtd, pos, len, &retlen, buf);

 while (len > 0) {
  unsigned long sect_start = (pos/sect_size)*sect_size;
  unsigned int offset = pos - sect_start;
  unsigned int size = sect_size - offset;
  if (size > len)
   size = len;







  if (mtdblk->cache_state != STATE_EMPTY &&
      mtdblk->cache_offset == sect_start) {
   memcpy (buf, mtdblk->cache_data + offset, size);
  } else {
   ret = mtd->read(mtd, pos, size, &retlen, buf);
   if (ret)
    return ret;
   if (retlen != size)
    return -EIO;
  }

  buf += size;
  pos += size;
  len -= size;
 }

 return 0;
}
