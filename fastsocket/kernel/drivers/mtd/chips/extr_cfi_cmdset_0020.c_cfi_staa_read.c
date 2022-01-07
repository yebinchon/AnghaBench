
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct mtd_info {struct map_info* priv; } ;
struct map_info {struct cfi_private* fldrv_priv; } ;
struct cfi_private {int chipshift; int numchips; int * chips; } ;
typedef int loff_t ;


 int do_read_onechip (struct map_info*,int *,unsigned long,unsigned long,int *) ;

__attribute__((used)) static int cfi_staa_read (struct mtd_info *mtd, loff_t from, size_t len, size_t *retlen, u_char *buf)
{
 struct map_info *map = mtd->priv;
 struct cfi_private *cfi = map->fldrv_priv;
 unsigned long ofs;
 int chipnum;
 int ret = 0;


 chipnum = (from >> cfi->chipshift);
 ofs = from - (chipnum << cfi->chipshift);

 *retlen = 0;

 while (len) {
  unsigned long thislen;

  if (chipnum >= cfi->numchips)
   break;

  if ((len + ofs -1) >> cfi->chipshift)
   thislen = (1<<cfi->chipshift) - ofs;
  else
   thislen = len;

  ret = do_read_onechip(map, &cfi->chips[chipnum], ofs, thislen, buf);
  if (ret)
   break;

  *retlen += thislen;
  len -= thislen;
  buf += thislen;

  ofs = 0;
  chipnum++;
 }
 return ret;
}
