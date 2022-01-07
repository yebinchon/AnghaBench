
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_5__ {int (* read_page_raw ) (struct mtd_info*,struct nand_chip*,int *,int) ;int (* read_subpage ) (struct mtd_info*,struct nand_chip*,int,int,int *) ;int (* read_page ) (struct mtd_info*,struct nand_chip*,int *,int) ;TYPE_1__* layout; } ;
struct nand_chip {int phys_erase_shift; int page_shift; int chip_shift; int pagemask; int pagebuf; int options; int (* select_chip ) (struct mtd_info*,int) ;TYPE_3__* buffers; int chip_delay; int dev_ready; TYPE_2__ ecc; int (* cmdfunc ) (struct mtd_info*,int ,int,int) ;} ;
struct mtd_oob_ops {int len; int ooblen; scalar_t__ mode; int retlen; int oobretlen; int * oobbuf; int * datbuf; } ;
struct mtd_ecc_stats {scalar_t__ corrected; scalar_t__ failed; } ;
struct mtd_info {int writesize; int oobsize; struct mtd_ecc_stats ecc_stats; struct nand_chip* priv; } ;
typedef int loff_t ;
struct TYPE_6__ {int * databuf; } ;
struct TYPE_4__ {int oobavail; } ;


 int EBADMSG ;
 int EUCLEAN ;
 scalar_t__ MTD_OOB_RAW ;
 int NAND_CANAUTOINCR (struct nand_chip*) ;
 int NAND_CMD_READ0 ;
 int NAND_NO_READRDY ;
 scalar_t__ NAND_SUBPAGE_READ (struct nand_chip*) ;
 scalar_t__ likely (int) ;
 int memcpy (int *,int *,int) ;
 int min (int,int) ;
 int * nand_transfer_oob (struct nand_chip*,int *,struct mtd_oob_ops*,int) ;
 int nand_wait_ready (struct mtd_info*) ;
 int stub1 (struct mtd_info*,int) ;
 int stub2 (struct mtd_info*,int ,int,int) ;
 int stub3 (struct mtd_info*,struct nand_chip*,int *,int) ;
 int stub4 (struct mtd_info*,struct nand_chip*,int,int,int *) ;
 int stub5 (struct mtd_info*,struct nand_chip*,int *,int) ;
 int stub6 (struct mtd_info*,int) ;
 int stub7 (struct mtd_info*,int) ;
 int udelay (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int nand_do_read_ops(struct mtd_info *mtd, loff_t from,
       struct mtd_oob_ops *ops)
{
 int chipnr, page, realpage, col, bytes, aligned;
 struct nand_chip *chip = mtd->priv;
 struct mtd_ecc_stats stats;
 int blkcheck = (1 << (chip->phys_erase_shift - chip->page_shift)) - 1;
 int sndcmd = 1;
 int ret = 0;
 uint32_t readlen = ops->len;
 uint32_t oobreadlen = ops->ooblen;
 uint8_t *bufpoi, *oob, *buf;

 stats = mtd->ecc_stats;

 chipnr = (int)(from >> chip->chip_shift);
 chip->select_chip(mtd, chipnr);

 realpage = (int)(from >> chip->page_shift);
 page = realpage & chip->pagemask;

 col = (int)(from & (mtd->writesize - 1));

 buf = ops->datbuf;
 oob = ops->oobbuf;

 while(1) {
  bytes = min(mtd->writesize - col, readlen);
  aligned = (bytes == mtd->writesize);


  if (realpage != chip->pagebuf || oob) {
   bufpoi = aligned ? buf : chip->buffers->databuf;

   if (likely(sndcmd)) {
    chip->cmdfunc(mtd, NAND_CMD_READ0, 0x00, page);
    sndcmd = 0;
   }


   if (unlikely(ops->mode == MTD_OOB_RAW))
    ret = chip->ecc.read_page_raw(mtd, chip,
             bufpoi, page);
   else if (!aligned && NAND_SUBPAGE_READ(chip) && !oob)
    ret = chip->ecc.read_subpage(mtd, chip, col, bytes, bufpoi);
   else
    ret = chip->ecc.read_page(mtd, chip, bufpoi,
         page);
   if (ret < 0)
    break;


   if (!aligned) {
    if (!NAND_SUBPAGE_READ(chip) && !oob)
     chip->pagebuf = realpage;
    memcpy(buf, chip->buffers->databuf + col, bytes);
   }

   buf += bytes;

   if (unlikely(oob)) {

    if (ops->mode != MTD_OOB_RAW) {
     int toread = min(oobreadlen,
      chip->ecc.layout->oobavail);
     if (toread) {
      oob = nand_transfer_oob(chip,
       oob, ops, toread);
      oobreadlen -= toread;
     }
    } else
     buf = nand_transfer_oob(chip,
      buf, ops, mtd->oobsize);
   }

   if (!(chip->options & NAND_NO_READRDY)) {







    if (!chip->dev_ready)
     udelay(chip->chip_delay);
    else
     nand_wait_ready(mtd);
   }
  } else {
   memcpy(buf, chip->buffers->databuf + col, bytes);
   buf += bytes;
  }

  readlen -= bytes;

  if (!readlen)
   break;


  col = 0;

  realpage++;

  page = realpage & chip->pagemask;

  if (!page) {
   chipnr++;
   chip->select_chip(mtd, -1);
   chip->select_chip(mtd, chipnr);
  }




  if (!NAND_CANAUTOINCR(chip) || !(page & blkcheck))
   sndcmd = 1;
 }

 ops->retlen = ops->len - (size_t) readlen;
 if (oob)
  ops->oobretlen = ops->ooblen - oobreadlen;

 if (ret)
  return ret;

 if (mtd->ecc_stats.failed - stats.failed)
  return -EBADMSG;

 return mtd->ecc_stats.corrected - stats.corrected ? -EUCLEAN : 0;
}
