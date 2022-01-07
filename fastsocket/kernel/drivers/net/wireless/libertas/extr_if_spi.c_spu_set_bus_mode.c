
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct if_spi_card {int dummy; } ;


 int EIO ;
 int IF_SPI_SPU_BUS_MODE_REG ;
 int lbs_pr_err (char*) ;
 int spu_read_u16 (struct if_spi_card*,int ,int*) ;
 int spu_write_u16 (struct if_spi_card*,int ,int) ;

__attribute__((used)) static int spu_set_bus_mode(struct if_spi_card *card, u16 mode)
{
 int err = 0;
 u16 rval;

 err = spu_write_u16(card, IF_SPI_SPU_BUS_MODE_REG, mode);
 if (err)
  return err;

 err = spu_read_u16(card, IF_SPI_SPU_BUS_MODE_REG, &rval);
 if (err)
  return err;
 if ((rval & 0xF) != mode) {
  lbs_pr_err("Can't read bus mode register.\n");
  return -EIO;
 }
 return 0;
}
