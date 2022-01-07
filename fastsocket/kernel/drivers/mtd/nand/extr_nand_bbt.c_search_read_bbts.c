
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nand_bbt_descr {int dummy; } ;
struct mtd_info {int dummy; } ;


 int search_bbt (struct mtd_info*,int *,struct nand_bbt_descr*) ;

__attribute__((used)) static int search_read_bbts(struct mtd_info *mtd, uint8_t * buf, struct nand_bbt_descr *td, struct nand_bbt_descr *md)
{

 search_bbt(mtd, buf, td);


 if (md)
  search_bbt(mtd, buf, md);


 return 1;
}
