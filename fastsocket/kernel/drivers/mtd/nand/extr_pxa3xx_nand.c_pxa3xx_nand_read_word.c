
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pxa3xx_nand_info {int buf_start; int buf_count; scalar_t__ data_buff; } ;
struct mtd_info {struct pxa3xx_nand_info* priv; } ;



__attribute__((used)) static u16 pxa3xx_nand_read_word(struct mtd_info *mtd)
{
 struct pxa3xx_nand_info *info = mtd->priv;
 u16 retval = 0xFFFF;

 if (!(info->buf_start & 0x01) && info->buf_start < info->buf_count) {
  retval = *((u16 *)(info->data_buff+info->buf_start));
  info->buf_start += 2;
 }
 return retval;
}
