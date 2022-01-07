
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
struct pxa3xx_nand_info {scalar_t__ buf_start; scalar_t__ buf_count; char* data_buff; } ;
struct mtd_info {struct pxa3xx_nand_info* priv; } ;



__attribute__((used)) static uint8_t pxa3xx_nand_read_byte(struct mtd_info *mtd)
{
 struct pxa3xx_nand_info *info = mtd->priv;
 char retval = 0xFF;

 if (info->buf_start < info->buf_count)

  retval = info->data_buff[info->buf_start++];

 return retval;
}
