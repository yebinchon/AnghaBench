
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nand_chip {int numchips; struct nand_bbt_descr* bbt_md; struct nand_bbt_descr* bbt_td; } ;
struct nand_bbt_descr {int options; int* pages; int* version; } ;
struct mtd_info {struct nand_chip* priv; } ;
typedef scalar_t__ int8_t ;


 int NAND_BBT_CREATE ;
 int NAND_BBT_PERCHIP ;
 int NAND_BBT_VERSION ;
 int NAND_BBT_WRITE ;
 int create_bbt (struct mtd_info*,int *,struct nand_bbt_descr*,int) ;
 int read_abs_bbt (struct mtd_info*,int *,struct nand_bbt_descr*,int) ;
 int write_bbt (struct mtd_info*,int *,struct nand_bbt_descr*,struct nand_bbt_descr*,int) ;

__attribute__((used)) static int check_create(struct mtd_info *mtd, uint8_t *buf, struct nand_bbt_descr *bd)
{
 int i, chips, writeops, chipsel, res;
 struct nand_chip *this = mtd->priv;
 struct nand_bbt_descr *td = this->bbt_td;
 struct nand_bbt_descr *md = this->bbt_md;
 struct nand_bbt_descr *rd, *rd2;


 if (td->options & NAND_BBT_PERCHIP)
  chips = this->numchips;
 else
  chips = 1;

 for (i = 0; i < chips; i++) {
  writeops = 0;
  rd = ((void*)0);
  rd2 = ((void*)0);

  chipsel = (td->options & NAND_BBT_PERCHIP) ? i : -1;

  if (md) {
   if (td->pages[i] == -1 && md->pages[i] == -1) {
    writeops = 0x03;
    goto create;
   }

   if (td->pages[i] == -1) {
    rd = md;
    td->version[i] = md->version[i];
    writeops = 1;
    goto writecheck;
   }

   if (md->pages[i] == -1) {
    rd = td;
    md->version[i] = td->version[i];
    writeops = 2;
    goto writecheck;
   }

   if (td->version[i] == md->version[i]) {
    rd = td;
    if (!(td->options & NAND_BBT_VERSION))
     rd2 = md;
    goto writecheck;
   }

   if (((int8_t) (td->version[i] - md->version[i])) > 0) {
    rd = td;
    md->version[i] = td->version[i];
    writeops = 2;
   } else {
    rd = md;
    td->version[i] = md->version[i];
    writeops = 1;
   }

   goto writecheck;

  } else {
   if (td->pages[i] == -1) {
    writeops = 0x01;
    goto create;
   }
   rd = td;
   goto writecheck;
  }
 create:

  if (!(td->options & NAND_BBT_CREATE))
   continue;


  create_bbt(mtd, buf, bd, chipsel);

  td->version[i] = 1;
  if (md)
   md->version[i] = 1;
 writecheck:

  if (rd)
   read_abs_bbt(mtd, buf, rd, chipsel);

  if (rd2)
   read_abs_bbt(mtd, buf, rd2, chipsel);


  if ((writeops & 0x01) && (td->options & NAND_BBT_WRITE)) {
   res = write_bbt(mtd, buf, td, md, chipsel);
   if (res < 0)
    return res;
  }


  if ((writeops & 0x02) && md && (md->options & NAND_BBT_WRITE)) {
   res = write_bbt(mtd, buf, md, td, chipsel);
   if (res < 0)
    return res;
  }
 }
 return 0;
}
