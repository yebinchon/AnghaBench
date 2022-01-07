
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uint64_t ;
struct mtd_info {scalar_t__ erasesize; struct map_info* priv; } ;
struct map_info {struct cfi_private* fldrv_priv; } ;
struct cfi_private {int interleave; int device_type; int chipshift; int * chips; } ;
typedef int loff_t ;


 int cfi_read_query (struct map_info*,unsigned long) ;
 int cfi_send_gen_cmd (int,int,int ,struct map_info*,struct cfi_private*,int,int *) ;
 int do_unlock_oneblock (struct map_info*,int *,unsigned long) ;
 int printk (char*,unsigned long,...) ;

__attribute__((used)) static int cfi_staa_unlock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
{
 struct map_info *map = mtd->priv;
 struct cfi_private *cfi = map->fldrv_priv;
 unsigned long adr;
 int chipnum, ret = 0;




 chipnum = ofs >> cfi->chipshift;
 adr = ofs - (chipnum << cfi->chipshift);
 ret = do_unlock_oneblock(map, &cfi->chips[chipnum], adr);







 return ret;
}
