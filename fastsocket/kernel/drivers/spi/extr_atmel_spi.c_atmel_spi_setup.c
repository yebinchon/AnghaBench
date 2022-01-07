
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct spi_device {unsigned int bits_per_word; int chip_select; int mode; int dev; struct atmel_spi_device* controller_state; scalar_t__ controller_data; int max_speed_hz; TYPE_1__* master; } ;
struct atmel_spi_device {unsigned int npcs_pin; int csr; } ;
struct atmel_spi {int lock; struct spi_device* stay; int clk; scalar_t__ stopping; } ;
struct TYPE_2__ {int num_chipselect; } ;


 int BITS ;
 int CPOL ;
 scalar_t__ CSR0 ;
 int DIV_ROUND_UP (unsigned long,int ) ;
 int DLYBCT ;
 int DLYBS ;
 int EINVAL ;
 int ENOMEM ;
 int ESHUTDOWN ;
 int GFP_KERNEL ;
 int NCPHA ;
 int SCBR ;
 int SPI_BF (int ,unsigned int) ;
 int SPI_BIT (int ) ;
 int SPI_CPHA ;
 int SPI_CPOL ;
 int SPI_CS_HIGH ;
 int SPI_SCBR_SIZE ;
 int atmel_spi_is_v2 () ;
 unsigned long clk_get_rate (int ) ;
 int cs_deactivate (struct atmel_spi*,struct spi_device*) ;
 int dev_dbg (int *,char*,...) ;
 int dev_name (int *) ;
 int gpio_direction_output (unsigned int,int) ;
 int gpio_request (unsigned int,int ) ;
 int kfree (struct atmel_spi_device*) ;
 struct atmel_spi_device* kzalloc (int,int ) ;
 struct atmel_spi* spi_master_get_devdata (TYPE_1__*) ;
 int spi_writel (struct atmel_spi*,scalar_t__,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int atmel_spi_setup(struct spi_device *spi)
{
 struct atmel_spi *as;
 struct atmel_spi_device *asd;
 u32 scbr, csr;
 unsigned int bits = spi->bits_per_word;
 unsigned long bus_hz;
 unsigned int npcs_pin;
 int ret;

 as = spi_master_get_devdata(spi->master);

 if (as->stopping)
  return -ESHUTDOWN;

 if (spi->chip_select > spi->master->num_chipselect) {
  dev_dbg(&spi->dev,
    "setup: invalid chipselect %u (%u defined)\n",
    spi->chip_select, spi->master->num_chipselect);
  return -EINVAL;
 }

 if (bits < 8 || bits > 16) {
  dev_dbg(&spi->dev,
    "setup: invalid bits_per_word %u (8 to 16)\n",
    bits);
  return -EINVAL;
 }


 if (!atmel_spi_is_v2()
   && spi->chip_select == 0
   && (spi->mode & SPI_CS_HIGH)) {
  dev_dbg(&spi->dev, "setup: can't be active-high\n");
  return -EINVAL;
 }


 bus_hz = clk_get_rate(as->clk);
 if (!atmel_spi_is_v2())
  bus_hz /= 2;

 if (spi->max_speed_hz) {




  scbr = DIV_ROUND_UP(bus_hz, spi->max_speed_hz);





  if (scbr >= (1 << SPI_SCBR_SIZE)) {
   dev_dbg(&spi->dev,
    "setup: %d Hz too slow, scbr %u; min %ld Hz\n",
    spi->max_speed_hz, scbr, bus_hz/255);
   return -EINVAL;
  }
 } else

  scbr = 0xff;

 csr = SPI_BF(SCBR, scbr) | SPI_BF(BITS, bits - 8);
 if (spi->mode & SPI_CPOL)
  csr |= SPI_BIT(CPOL);
 if (!(spi->mode & SPI_CPHA))
  csr |= SPI_BIT(NCPHA);







 csr |= SPI_BF(DLYBS, 0);
 csr |= SPI_BF(DLYBCT, 0);


 npcs_pin = (unsigned int)spi->controller_data;
 asd = spi->controller_state;
 if (!asd) {
  asd = kzalloc(sizeof(struct atmel_spi_device), GFP_KERNEL);
  if (!asd)
   return -ENOMEM;

  ret = gpio_request(npcs_pin, dev_name(&spi->dev));
  if (ret) {
   kfree(asd);
   return ret;
  }

  asd->npcs_pin = npcs_pin;
  spi->controller_state = asd;
  gpio_direction_output(npcs_pin, !(spi->mode & SPI_CS_HIGH));
 } else {
  unsigned long flags;

  spin_lock_irqsave(&as->lock, flags);
  if (as->stay == spi)
   as->stay = ((void*)0);
  cs_deactivate(as, spi);
  spin_unlock_irqrestore(&as->lock, flags);
 }

 asd->csr = csr;

 dev_dbg(&spi->dev,
  "setup: %lu Hz bpw %u mode 0x%x -> csr%d %08x\n",
  bus_hz / scbr, bits, spi->mode, spi->chip_select, csr);

 if (!atmel_spi_is_v2())
  spi_writel(as, CSR0 + 4 * spi->chip_select, csr);

 return 0;
}
