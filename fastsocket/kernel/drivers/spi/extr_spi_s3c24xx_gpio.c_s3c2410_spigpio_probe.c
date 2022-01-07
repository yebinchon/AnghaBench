
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct spi_master {int dummy; } ;
struct s3c2410_spigpio_info {scalar_t__ pin_clk; scalar_t__ pin_mosi; scalar_t__ pin_miso; int num_chipselect; int bus_num; } ;
struct TYPE_7__ {TYPE_1__* master; int * txrx_word; int chipselect; } ;
struct s3c2410_spigpio {TYPE_3__ bitbang; struct s3c2410_spigpio_info* info; } ;
struct TYPE_8__ {struct s3c2410_spigpio_info* platform_data; } ;
struct platform_device {TYPE_4__ dev; } ;
struct TYPE_6__ {int num_chipselect; int bus_num; } ;


 int ENOMEM ;
 scalar_t__ S3C2410_GPA0 ;
 scalar_t__ S3C2410_GPH10 ;
 int S3C2410_GPIO_INPUT ;
 int S3C2410_GPIO_OUTPUT ;
 size_t SPI_MODE_0 ;
 size_t SPI_MODE_1 ;
 size_t SPI_MODE_2 ;
 size_t SPI_MODE_3 ;
 int dev_err (TYPE_4__*,char*) ;
 int platform_set_drvdata (struct platform_device*,struct s3c2410_spigpio*) ;
 int s3c2410_gpio_cfgpin (scalar_t__,int ) ;
 int s3c2410_gpio_setpin (scalar_t__,int ) ;
 int s3c2410_spigpio_chipselect ;
 int s3c2410_spigpio_txrx_mode0 ;
 int s3c2410_spigpio_txrx_mode1 ;
 int s3c2410_spigpio_txrx_mode2 ;
 int s3c2410_spigpio_txrx_mode3 ;
 struct spi_master* spi_alloc_master (TYPE_4__*,int) ;
 int spi_bitbang_start (TYPE_3__*) ;
 TYPE_1__* spi_master_get (struct spi_master*) ;
 struct s3c2410_spigpio* spi_master_get_devdata (struct spi_master*) ;
 int spi_master_put (TYPE_1__*) ;

__attribute__((used)) static int s3c2410_spigpio_probe(struct platform_device *dev)
{
 struct s3c2410_spigpio_info *info;
 struct spi_master *master;
 struct s3c2410_spigpio *sp;
 int ret;

 master = spi_alloc_master(&dev->dev, sizeof(struct s3c2410_spigpio));
 if (master == ((void*)0)) {
  dev_err(&dev->dev, "failed to allocate spi master\n");
  ret = -ENOMEM;
  goto err;
 }

 sp = spi_master_get_devdata(master);

 platform_set_drvdata(dev, sp);


 info = sp->info = dev->dev.platform_data;


 sp->bitbang.master = spi_master_get(master);
 sp->bitbang.master->bus_num = info->bus_num;
 sp->bitbang.master->num_chipselect = info->num_chipselect;
 sp->bitbang.chipselect = s3c2410_spigpio_chipselect;

 sp->bitbang.txrx_word[SPI_MODE_0] = s3c2410_spigpio_txrx_mode0;
 sp->bitbang.txrx_word[SPI_MODE_1] = s3c2410_spigpio_txrx_mode1;
 sp->bitbang.txrx_word[SPI_MODE_2] = s3c2410_spigpio_txrx_mode2;
 sp->bitbang.txrx_word[SPI_MODE_3] = s3c2410_spigpio_txrx_mode3;



 s3c2410_gpio_setpin(info->pin_clk, 0);
 s3c2410_gpio_cfgpin(info->pin_clk, S3C2410_GPIO_OUTPUT);

 if (info->pin_mosi < S3C2410_GPH10) {
  s3c2410_gpio_setpin(info->pin_mosi, 0);
  s3c2410_gpio_cfgpin(info->pin_mosi, S3C2410_GPIO_OUTPUT);
 }

 if (info->pin_miso != S3C2410_GPA0 && info->pin_miso < S3C2410_GPH10)
  s3c2410_gpio_cfgpin(info->pin_miso, S3C2410_GPIO_INPUT);

 ret = spi_bitbang_start(&sp->bitbang);
 if (ret)
  goto err_no_bitbang;

 return 0;

 err_no_bitbang:
 spi_master_put(sp->bitbang.master);
 err:
 return ret;

}
