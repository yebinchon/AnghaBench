
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct pxa3xx_nand_info {int data_size; int ndcb0; int ndcb1; int ndcb2; int row_addr_cycles; int col_addr_cycles; int use_ecc; struct pxa3xx_nand_flash* flash_info; } ;
struct pxa3xx_nand_flash {int page_size; struct pxa3xx_nand_cmdset* cmdset; } ;
struct pxa3xx_nand_cmdset {int program; } ;


 int EINVAL ;
 int NDCB0_ADDR_CYC (int) ;
 int NDCB0_AUTO_RS ;
 int NDCB0_CMD_TYPE (int) ;
 int NDCB0_DBC ;

__attribute__((used)) static int prepare_read_prog_cmd(struct pxa3xx_nand_info *info,
   uint16_t cmd, int column, int page_addr)
{
 const struct pxa3xx_nand_flash *f = info->flash_info;
 const struct pxa3xx_nand_cmdset *cmdset = f->cmdset;


 switch (f->page_size) {
 case 2048:
  info->data_size = (info->use_ecc) ? 2088 : 2112;
  break;
 case 512:
  info->data_size = (info->use_ecc) ? 520 : 528;
  break;
 default:
  return -EINVAL;
 }


 info->ndcb0 = cmd | ((cmd & 0xff00) ? NDCB0_DBC : 0);
 info->ndcb1 = 0;
 info->ndcb2 = 0;
 info->ndcb0 |= NDCB0_ADDR_CYC(info->row_addr_cycles + info->col_addr_cycles);

 if (info->col_addr_cycles == 2) {



  info->ndcb1 |= page_addr << 16;
  if (info->row_addr_cycles == 3)
   info->ndcb2 = (page_addr >> 16) & 0xff;
 } else



  info->ndcb1 = page_addr << 8;

 if (cmd == cmdset->program)
  info->ndcb0 |= NDCB0_CMD_TYPE(1) | NDCB0_AUTO_RS;

 return 0;
}
