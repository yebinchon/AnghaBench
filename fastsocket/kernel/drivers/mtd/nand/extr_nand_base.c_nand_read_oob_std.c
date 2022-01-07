
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int oob_poi; int (* read_buf ) (struct mtd_info*,int ,int ) ;int (* cmdfunc ) (struct mtd_info*,int ,int ,int) ;} ;
struct mtd_info {int oobsize; } ;


 int NAND_CMD_READOOB ;
 int stub1 (struct mtd_info*,int ,int ,int) ;
 int stub2 (struct mtd_info*,int ,int ) ;

__attribute__((used)) static int nand_read_oob_std(struct mtd_info *mtd, struct nand_chip *chip,
        int page, int sndcmd)
{
 if (sndcmd) {
  chip->cmdfunc(mtd, NAND_CMD_READOOB, 0, page);
  sndcmd = 0;
 }
 chip->read_buf(mtd, chip->oob_poi, mtd->oobsize);
 return sndcmd;
}
