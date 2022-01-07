
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct nand_chip {scalar_t__ IO_ADDR_W; } ;
struct mtd_info {struct nand_chip* priv; } ;


 int AMS_DELTA_LATCH2_NAND_NWE ;
 scalar_t__ OMAP1_MPUIO_BASE ;
 scalar_t__ OMAP_MPUIO_IO_CNTL ;
 int ams_delta_latch2_write (int ,int ) ;
 int ndelay (int) ;
 int omap_writew (int ,scalar_t__) ;

__attribute__((used)) static void ams_delta_write_byte(struct mtd_info *mtd, u_char byte)
{
 struct nand_chip *this = mtd->priv;

 omap_writew(0, (OMAP1_MPUIO_BASE + OMAP_MPUIO_IO_CNTL));
 omap_writew(byte, this->IO_ADDR_W);
 ams_delta_latch2_write(AMS_DELTA_LATCH2_NAND_NWE, 0);
 ndelay(40);
 ams_delta_latch2_write(AMS_DELTA_LATCH2_NAND_NWE,
          AMS_DELTA_LATCH2_NAND_NWE);
}
