
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct mtd_info {int oobsize; } ;


 int omap_nand_dma_transfer (struct mtd_info*,int const*,int,int) ;
 int omap_write_buf_pref (struct mtd_info*,int const*,int) ;

__attribute__((used)) static void omap_write_buf_dma_pref(struct mtd_info *mtd,
     const u_char *buf, int len)
{
 if (len <= mtd->oobsize)
  omap_write_buf_pref(mtd, buf, len);
 else

  omap_nand_dma_transfer(mtd, buf, len, 0x1);
}
