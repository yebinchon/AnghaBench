
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int u8 ;
struct mtd_info {scalar_t__ writesize; struct alauda* priv; } ;
struct alauda {int bytemask; } ;
typedef int loff_t ;


 int EBADMSG ;
 int EUCLEAN ;
 int alauda_bounce_read (struct mtd_info*,int,size_t,size_t*,int *) ;
 int alauda_read_page (struct mtd_info*,int,int *,int *,int*,int*) ;

__attribute__((used)) static int alauda_read(struct mtd_info *mtd, loff_t from, size_t len,
  size_t *retlen, u_char *buf)
{
 struct alauda *al = mtd->priv;
 int err, corrected=0, uncorrected=0;

 if ((from & al->bytemask) || (len & al->bytemask))
  return alauda_bounce_read(mtd, from, len, retlen, buf);

 *retlen = len;
 while (len) {
  u8 oob[16];

  err = alauda_read_page(mtd, from, buf, oob,
    &corrected, &uncorrected);
  if (err)
   return err;

  buf += mtd->writesize;
  from += mtd->writesize;
  len -= mtd->writesize;
 }
 err = 0;
 if (corrected)
  err = -EUCLEAN;
 if (uncorrected)
  err = -EBADMSG;
 return err;
}
