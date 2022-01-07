
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct uwire_state {int div1_idx; } ;
struct spi_device {int chip_select; int mode; struct uwire_state* controller_state; } ;


 int BITBANG_CS_ACTIVE ;
 int BITBANG_CS_INACTIVE ;
 int BUG_ON (int ) ;
 int CSRB ;
 int CS_CMD ;
 int SPI_CPOL ;
 int UWIRE_CSR ;
 int UWIRE_SR4 ;
 int uwire_read_reg (int ) ;
 int uwire_set_clk1_div (int ) ;
 int uwire_write_reg (int ,int) ;
 int wait_uwire_csr_flag (int ,int ,int ) ;

__attribute__((used)) static void uwire_chipselect(struct spi_device *spi, int value)
{
 struct uwire_state *ust = spi->controller_state;
 u16 w;
 int old_cs;


 BUG_ON(wait_uwire_csr_flag(CSRB, 0, 0));

 w = uwire_read_reg(UWIRE_CSR);
 old_cs = (w >> 10) & 0x03;
 if (value == BITBANG_CS_INACTIVE || old_cs != spi->chip_select) {

  w &= ~CS_CMD;
  uwire_write_reg(UWIRE_CSR, w);
 }

 if (value == BITBANG_CS_ACTIVE) {
  uwire_set_clk1_div(ust->div1_idx);

  if (spi->mode & SPI_CPOL)
   uwire_write_reg(UWIRE_SR4, 1);
  else
   uwire_write_reg(UWIRE_SR4, 0);

  w = spi->chip_select << 10;
  w |= CS_CMD;
  uwire_write_reg(UWIRE_CSR, w);
 }
}
