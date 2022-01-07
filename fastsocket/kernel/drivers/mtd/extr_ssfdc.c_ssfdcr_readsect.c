
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mtd; } ;
struct ssfdcr_record {int erase_size; int map_len; int* logic_block_map; TYPE_1__ mbd; } ;
struct mtd_blktrans_dev {int dummy; } ;


 int BUG () ;
 int DEBUG (int ,char*,unsigned long,...) ;
 int EIO ;
 int MTD_DEBUG_LEVEL3 ;
 int SECTOR_SHIFT ;
 int SECTOR_SIZE ;
 int memset (char*,int,int ) ;
 scalar_t__ read_physical_sector (int ,char*,unsigned long) ;

__attribute__((used)) static int ssfdcr_readsect(struct mtd_blktrans_dev *dev,
    unsigned long logic_sect_no, char *buf)
{
 struct ssfdcr_record *ssfdc = (struct ssfdcr_record *)dev;
 int sectors_per_block, offset, block_address;

 sectors_per_block = ssfdc->erase_size >> SECTOR_SHIFT;
 offset = (int)(logic_sect_no % sectors_per_block);
 block_address = (int)(logic_sect_no / sectors_per_block);

 DEBUG(MTD_DEBUG_LEVEL3,
  "SSFDC_RO: ssfdcr_readsect(%lu) sec_per_blk=%d, ofst=%d,"
  " block_addr=%d\n", logic_sect_no, sectors_per_block, offset,
  block_address);

 if (block_address >= ssfdc->map_len)
  BUG();

 block_address = ssfdc->logic_block_map[block_address];

 DEBUG(MTD_DEBUG_LEVEL3,
  "SSFDC_RO: ssfdcr_readsect() phys_block_addr=%d\n",
  block_address);

 if (block_address < 0xffff) {
  unsigned long sect_no;

  sect_no = (unsigned long)block_address * sectors_per_block +
    offset;

  DEBUG(MTD_DEBUG_LEVEL3,
   "SSFDC_RO: ssfdcr_readsect() phys_sect_no=%lu\n",
   sect_no);

  if (read_physical_sector(ssfdc->mbd.mtd, buf, sect_no) < 0)
   return -EIO;
 } else {
  memset(buf, 0xff, SECTOR_SIZE);
 }

 return 0;
}
