
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nftl_uci1 {int EraseMark; int EraseMark1; int WearInfo; } ;
struct mtd_info {int dummy; } ;
struct TYPE_2__ {struct mtd_info* mtd; } ;
struct NFTLrecord {int EraseSize; TYPE_1__ mbd; } ;


 unsigned int ERASE_MARK ;
 int SECTORSIZE ;
 char* buf ;
 scalar_t__ check_free_sectors (struct NFTLrecord*,int,int,int) ;
 void* cpu_to_le16 (unsigned int) ;
 int cpu_to_le32 (int ) ;
 int i ;
 unsigned int le16_to_cpu (int) ;
 scalar_t__ memcmpb (char*,int,int) ;
 scalar_t__ nftl_read_oob (struct mtd_info*,int,int,size_t*,char*) ;
 scalar_t__ nftl_write_oob (struct mtd_info*,int,int,size_t*,char*) ;

__attribute__((used)) static int check_and_mark_free_block(struct NFTLrecord *nftl, int block)
{
 struct mtd_info *mtd = nftl->mbd.mtd;
 struct nftl_uci1 h1;
 unsigned int erase_mark;
 size_t retlen;


 if (nftl_read_oob(mtd, block * nftl->EraseSize + SECTORSIZE + 8, 8,
     &retlen, (char *)&h1) < 0)
  return -1;

 erase_mark = le16_to_cpu ((h1.EraseMark | h1.EraseMark1));
 if (erase_mark != ERASE_MARK) {


  if (check_free_sectors (nftl, block * nftl->EraseSize, nftl->EraseSize, 1) != 0)
   return -1;


  h1.EraseMark = cpu_to_le16(ERASE_MARK);
  h1.EraseMark1 = cpu_to_le16(ERASE_MARK);
  h1.WearInfo = cpu_to_le32(0);
  if (nftl_write_oob(mtd,
       block * nftl->EraseSize + SECTORSIZE + 8, 8,
       &retlen, (char *)&h1) < 0)
   return -1;
 } else {
 }

 return 0;
}
