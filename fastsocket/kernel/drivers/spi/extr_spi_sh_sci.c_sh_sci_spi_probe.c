
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct spi_master {int dummy; } ;
struct TYPE_9__ {TYPE_2__* master; int * txrx_word; int chipselect; } ;
struct sh_sci_spi {TYPE_4__ bitbang; int membase; int val; TYPE_1__* info; } ;
struct resource {scalar_t__ start; scalar_t__ end; } ;
struct TYPE_10__ {TYPE_1__* platform_data; } ;
struct platform_device {TYPE_5__ dev; } ;
struct TYPE_8__ {int num_chipselect; int bus_num; } ;
struct TYPE_7__ {int num_chipselect; int bus_num; } ;


 int ENOENT ;
 int ENOMEM ;
 int ENXIO ;
 int IORESOURCE_MEM ;
 int PIN_INIT ;
 int SCSPTR (struct sh_sci_spi*) ;
 size_t SPI_MODE_0 ;
 size_t SPI_MODE_1 ;
 size_t SPI_MODE_2 ;
 size_t SPI_MODE_3 ;
 int dev_err (TYPE_5__*,char*) ;
 int ioread8 (int ) ;
 int ioremap (scalar_t__,scalar_t__) ;
 int iounmap (int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct sh_sci_spi*) ;
 int setbits (struct sh_sci_spi*,int ,int) ;
 int sh_sci_spi_chipselect ;
 int sh_sci_spi_txrx_mode0 ;
 int sh_sci_spi_txrx_mode1 ;
 int sh_sci_spi_txrx_mode2 ;
 int sh_sci_spi_txrx_mode3 ;
 struct spi_master* spi_alloc_master (TYPE_5__*,int) ;
 int spi_bitbang_start (TYPE_4__*) ;
 TYPE_2__* spi_master_get (struct spi_master*) ;
 struct sh_sci_spi* spi_master_get_devdata (struct spi_master*) ;
 int spi_master_put (TYPE_2__*) ;

__attribute__((used)) static int sh_sci_spi_probe(struct platform_device *dev)
{
 struct resource *r;
 struct spi_master *master;
 struct sh_sci_spi *sp;
 int ret;

 master = spi_alloc_master(&dev->dev, sizeof(struct sh_sci_spi));
 if (master == ((void*)0)) {
  dev_err(&dev->dev, "failed to allocate spi master\n");
  ret = -ENOMEM;
  goto err0;
 }

 sp = spi_master_get_devdata(master);

 platform_set_drvdata(dev, sp);
 sp->info = dev->dev.platform_data;


 sp->bitbang.master = spi_master_get(master);
 sp->bitbang.master->bus_num = sp->info->bus_num;
 sp->bitbang.master->num_chipselect = sp->info->num_chipselect;
 sp->bitbang.chipselect = sh_sci_spi_chipselect;

 sp->bitbang.txrx_word[SPI_MODE_0] = sh_sci_spi_txrx_mode0;
 sp->bitbang.txrx_word[SPI_MODE_1] = sh_sci_spi_txrx_mode1;
 sp->bitbang.txrx_word[SPI_MODE_2] = sh_sci_spi_txrx_mode2;
 sp->bitbang.txrx_word[SPI_MODE_3] = sh_sci_spi_txrx_mode3;

 r = platform_get_resource(dev, IORESOURCE_MEM, 0);
 if (r == ((void*)0)) {
  ret = -ENOENT;
  goto err1;
 }
 sp->membase = ioremap(r->start, r->end - r->start + 1);
 if (!sp->membase) {
  ret = -ENXIO;
  goto err1;
 }
 sp->val = ioread8(SCSPTR(sp));
 setbits(sp, PIN_INIT, 1);

 ret = spi_bitbang_start(&sp->bitbang);
 if (!ret)
  return 0;

 setbits(sp, PIN_INIT, 0);
 iounmap(sp->membase);
 err1:
 spi_master_put(sp->bitbang.master);
 err0:
 return ret;
}
