
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {struct DiskOnChip* priv; } ;
struct DiskOnChip {scalar_t__ interleave; } ;
typedef int loff_t ;


 unsigned int NAND_CMD_READ0 ;
 unsigned int NAND_CMD_READ1 ;
 unsigned int NAND_CMD_READOOB ;

__attribute__((used)) static unsigned int DoC_GetDataOffset(struct mtd_info *mtd, loff_t *from)
{
 struct DiskOnChip *this = mtd->priv;

 if (this->interleave) {
  unsigned int ofs = *from & 0x3ff;
  unsigned int cmd;

  if (ofs < 512) {
   cmd = NAND_CMD_READ0;
   ofs &= 0x1ff;
  } else if (ofs < 1014) {
   cmd = NAND_CMD_READ1;
   ofs = (ofs & 0x1ff) + 10;
  } else {
   cmd = NAND_CMD_READOOB;
   ofs = ofs - 1014;
  }

  *from = (*from & ~0x3ff) | ofs;
  return cmd;
 } else {

  if ((*from) & 0x100)
   return NAND_CMD_READ1;
  return NAND_CMD_READ0;
 }
}
