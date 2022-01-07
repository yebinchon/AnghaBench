
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct vmu_cache {scalar_t__ block; scalar_t__ buffer; scalar_t__ jiffies_atc; scalar_t__ valid; } ;
struct vmu_block {scalar_t__ num; size_t ofs; } ;
struct mtd_info {struct mdev_part* priv; } ;
struct memcard {int blocklen; TYPE_1__* parts; } ;
struct mdev_part {int partition; struct maple_device* mdev; } ;
struct maple_device {int dummy; } ;
typedef size_t loff_t ;
struct TYPE_2__ {int numblocks; struct vmu_cache* pcache; } ;


 int EIO ;
 int ENOMEM ;
 scalar_t__ HZ ;
 int jiffies ;
 int kfree (struct vmu_block*) ;
 struct memcard* maple_get_drvdata (struct maple_device*) ;
 int memcpy (int *,scalar_t__,int) ;
 int memset (int *,unsigned char,int) ;
 struct vmu_block* ofs_to_block (size_t,struct mtd_info*,int) ;
 scalar_t__ time_before (int ,scalar_t__) ;
 unsigned char vmu_flash_read_char (size_t,int*,struct mtd_info*) ;

__attribute__((used)) static int vmu_flash_read(struct mtd_info *mtd, loff_t from, size_t len,
 size_t *retlen, u_char *buf)
{
 struct maple_device *mdev;
 struct memcard *card;
 struct mdev_part *mpart;
 struct vmu_cache *pcache;
 struct vmu_block *vblock;
 int index = 0, retval, partition, leftover, numblocks;
 unsigned char cx;

 if (len < 1)
  return -EIO;

 mpart = mtd->priv;
 mdev = mpart->mdev;
 partition = mpart->partition;
 card = maple_get_drvdata(mdev);

 numblocks = card->parts[partition].numblocks;
 if (from + len > numblocks * card->blocklen)
  len = numblocks * card->blocklen - from;
 if (len == 0)
  return -EIO;

 pcache = card->parts[partition].pcache;
 do {
  vblock = ofs_to_block(from + index, mtd, partition);
  if (!vblock)
   return -ENOMEM;

  if (pcache->valid &&
   time_before(jiffies, pcache->jiffies_atc + HZ) &&
   (pcache->block == vblock->num)) {

   leftover = card->blocklen - vblock->ofs;
   if (vblock->ofs + len - index < card->blocklen) {

    memcpy(buf + index,
     pcache->buffer + vblock->ofs,
     len - index);
    index = len;
   } else {

    memcpy(buf + index, pcache->buffer +
     vblock->ofs, leftover);
    index += leftover;
   }
  } else {




   cx = vmu_flash_read_char(from + index, &retval, mtd);
   if (retval) {
    *retlen = index;
    kfree(vblock);
    return cx;
   }
   memset(buf + index, cx, 1);
   index++;
  }
  kfree(vblock);
 } while (len > index);
 *retlen = index;

 return 0;
}
