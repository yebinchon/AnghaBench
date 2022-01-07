
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mtd_oob_ops {size_t len; scalar_t__ mode; size_t retlen; scalar_t__ ooboffs; int * oobbuf; } ;
struct mtd_info {struct DiskOnChip* priv; } ;
struct Nand {scalar_t__ floor; scalar_t__ chip; } ;
struct DiskOnChip {size_t chipshift; scalar_t__ curfloor; scalar_t__ curchip; int lock; scalar_t__ page256; struct Nand* chips; } ;
typedef size_t loff_t ;


 int ADDR_COLUMN_PAGE ;
 int BUG_ON (int) ;
 int CDSN_CTRL_WP ;
 int DoC_Address (struct DiskOnChip*,int ,size_t,int ,int ) ;
 int DoC_Command (struct DiskOnChip*,int ,int ) ;
 int DoC_ReadBuf (struct DiskOnChip*,int *,size_t) ;
 int DoC_SelectChip (struct DiskOnChip*,scalar_t__) ;
 int DoC_SelectFloor (struct DiskOnChip*,scalar_t__) ;
 int DoC_WaitReady (struct DiskOnChip*) ;
 scalar_t__ MTD_OOB_PLACE ;
 int NAND_CMD_READOOB ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int doc_read_oob(struct mtd_info *mtd, loff_t ofs,
   struct mtd_oob_ops *ops)
{
 struct DiskOnChip *this = mtd->priv;
 int len256 = 0, ret;
 struct Nand *mychip;
 uint8_t *buf = ops->oobbuf;
 size_t len = ops->len;

 BUG_ON(ops->mode != MTD_OOB_PLACE);

 ofs += ops->ooboffs;

 mutex_lock(&this->lock);

 mychip = &this->chips[ofs >> this->chipshift];

 if (this->curfloor != mychip->floor) {
  DoC_SelectFloor(this, mychip->floor);
  DoC_SelectChip(this, mychip->chip);
 } else if (this->curchip != mychip->chip) {
  DoC_SelectChip(this, mychip->chip);
 }
 this->curfloor = mychip->floor;
 this->curchip = mychip->chip;



 if (this->page256) {
  if (!(ofs & 0x8))
   ofs += 0x100;
  else
   ofs -= 0x8;
 }

 DoC_Command(this, NAND_CMD_READOOB, CDSN_CTRL_WP);
 DoC_Address(this, ADDR_COLUMN_PAGE, ofs, CDSN_CTRL_WP, 0);




 if (this->page256 && ofs + len > (ofs | 0x7) + 1) {
  len256 = (ofs | 0x7) + 1 - ofs;
  DoC_ReadBuf(this, buf, len256);

  DoC_Command(this, NAND_CMD_READOOB, CDSN_CTRL_WP);
  DoC_Address(this, ADDR_COLUMN_PAGE, ofs & (~0x1ff),
       CDSN_CTRL_WP, 0);
 }

 DoC_ReadBuf(this, &buf[len256], len - len256);

 ops->retlen = len;




 ret = DoC_WaitReady(this);

 mutex_unlock(&this->lock);
 return ret;

}
