
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nftl_uci2 {int FoldMark; int FoldMark1; } ;
struct mtd_info {int dummy; } ;
struct TYPE_2__ {struct mtd_info* mtd; } ;
struct NFTLrecord {unsigned int EraseSize; TYPE_1__ mbd; } ;


 int SECTORSIZE ;
 int le16_to_cpu (int) ;
 scalar_t__ nftl_read_oob (struct mtd_info*,unsigned int,int,size_t*,char*) ;

__attribute__((used)) static int get_fold_mark(struct NFTLrecord *nftl, unsigned int block)
{
 struct mtd_info *mtd = nftl->mbd.mtd;
 struct nftl_uci2 uci;
 size_t retlen;

 if (nftl_read_oob(mtd, block * nftl->EraseSize + 2 * SECTORSIZE + 8,
     8, &retlen, (char *)&uci) < 0)
  return 0;

 return le16_to_cpu((uci.FoldMark | uci.FoldMark1));
}
