
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mtd_info {int oobsize; scalar_t__ (* read ) (struct mtd_info*,unsigned int,int,size_t*,int *) ;} ;
struct TYPE_2__ {struct mtd_info* mtd; } ;
struct INFTLrecord {TYPE_1__ mbd; } ;


 int SECTORSIZE ;
 scalar_t__ inftl_read_oob (struct mtd_info*,unsigned int,int,size_t*,int *) ;
 scalar_t__ memcmpb (int *,int,int) ;
 scalar_t__ stub1 (struct mtd_info*,unsigned int,int,size_t*,int *) ;

__attribute__((used)) static int check_free_sectors(struct INFTLrecord *inftl, unsigned int address,
 int len, int check_oob)
{
 u8 buf[SECTORSIZE + inftl->mbd.mtd->oobsize];
 struct mtd_info *mtd = inftl->mbd.mtd;
 size_t retlen;
 int i;

 for (i = 0; i < len; i += SECTORSIZE) {
  if (mtd->read(mtd, address, SECTORSIZE, &retlen, buf))
   return -1;
  if (memcmpb(buf, 0xff, SECTORSIZE) != 0)
   return -1;

  if (check_oob) {
   if(inftl_read_oob(mtd, address, mtd->oobsize,
       &retlen, &buf[SECTORSIZE]) < 0)
    return -1;
   if (memcmpb(buf + SECTORSIZE, 0xff, mtd->oobsize) != 0)
    return -1;
  }
  address += SECTORSIZE;
 }

 return 0;
}
