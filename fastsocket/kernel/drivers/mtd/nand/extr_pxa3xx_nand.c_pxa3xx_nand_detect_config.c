
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct pxa3xx_nand_info {int read_id_bytes; int reg_ndcr; int oob_size; int col_addr_cycles; int row_addr_cycles; TYPE_1__* flash_info; } ;
struct nand_flash_dev {int id; int chipsize; int * name; } ;
struct TYPE_2__ {int page_per_block; int page_size; int flash_width; int dfc_width; int num_blocks; int * timing; int * cmdset; } ;


 int ENODEV ;
 int NDCR ;
 int NDCR_DWIDTH_C ;
 int NDCR_DWIDTH_M ;
 int NDCR_PAGE_SZ ;
 int NDCR_PG_PER_BLK ;
 int __ffs (int) ;
 scalar_t__ __readid (struct pxa3xx_nand_info*,int*) ;
 TYPE_1__ default_flash ;
 int default_timing ;
 int largepage_cmdset ;
 struct nand_flash_dev* nand_flash_ids ;
 int nand_readl (struct pxa3xx_nand_info*,int ) ;
 int pxa3xx_nand_detect_timing (struct pxa3xx_nand_info*,int *) ;
 int smallpage_cmdset ;

__attribute__((used)) static int pxa3xx_nand_detect_config(struct pxa3xx_nand_info *info)
{
 uint32_t ndcr = nand_readl(info, NDCR);
 struct nand_flash_dev *type = ((void*)0);
 uint32_t id = -1;
 int i;

 default_flash.page_per_block = ndcr & NDCR_PG_PER_BLK ? 64 : 32;
 default_flash.page_size = ndcr & NDCR_PAGE_SZ ? 2048 : 512;
 default_flash.flash_width = ndcr & NDCR_DWIDTH_M ? 16 : 8;
 default_flash.dfc_width = ndcr & NDCR_DWIDTH_C ? 16 : 8;

 if (default_flash.page_size == 2048)
  default_flash.cmdset = &largepage_cmdset;
 else
  default_flash.cmdset = &smallpage_cmdset;


 info->flash_info = &default_flash;
 info->read_id_bytes = (default_flash.page_size == 2048) ? 4 : 2;
 info->reg_ndcr = ndcr;

 if (__readid(info, &id))
  return -ENODEV;


 id = (id >> 8) & 0xff;
 for (i = 0; nand_flash_ids[i].name != ((void*)0); i++) {
  if (id == nand_flash_ids[i].id) {
   type = &nand_flash_ids[i];
   break;
  }
 }

 if (!type)
  return -ENODEV;


 i = __ffs(default_flash.page_per_block * default_flash.page_size);
 default_flash.num_blocks = type->chipsize << (20 - i);

 info->oob_size = (default_flash.page_size == 2048) ? 64 : 16;


 info->col_addr_cycles = (default_flash.page_size == 2048) ? 2 : 1;

 if (default_flash.num_blocks * default_flash.page_per_block > 65536)
  info->row_addr_cycles = 3;
 else
  info->row_addr_cycles = 2;

 pxa3xx_nand_detect_timing(info, &default_timing);
 default_flash.timing = &default_timing;

 return 0;
}
