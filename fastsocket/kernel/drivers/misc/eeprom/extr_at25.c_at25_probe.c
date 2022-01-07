
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct spi_eeprom {int flags; int byte_len; int page_size; int name; int context; int (* setup ) (TYPE_3__*,int ) ;} ;
struct TYPE_10__ {int kobj; struct spi_eeprom* platform_data; } ;
struct spi_device {TYPE_4__ dev; } ;
struct TYPE_7__ {char* name; int mode; } ;
struct TYPE_8__ {int size; TYPE_1__ attr; int write; int read; } ;
struct TYPE_9__ {int write; int read; } ;
struct at25_data {int addrlen; struct spi_eeprom chip; TYPE_2__ bin; TYPE_3__ mem; int spi; int lock; } ;


 int AT25_RDSR ;
 int AT25_SR_nRDY ;
 int EE_ADDR1 ;
 int EE_ADDR2 ;
 int EE_ADDR3 ;
 int EE_READONLY ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int S_IRUSR ;
 int S_IWUSR ;
 int at25_bin_read ;
 int at25_bin_write ;
 int at25_mem_read ;
 int at25_mem_write ;
 int dev_dbg (TYPE_4__*,char*,...) ;
 int dev_info (TYPE_4__*,char*,int,char*,int ,char*,int ) ;
 int dev_set_drvdata (TYPE_4__*,struct at25_data*) ;
 int kfree (struct at25_data*) ;
 struct at25_data* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int spi_dev_get (struct spi_device*) ;
 int spi_w8r8 (struct spi_device*,int ) ;
 int stub1 (TYPE_3__*,int ) ;
 int sysfs_create_bin_file (int *,TYPE_2__*) ;

__attribute__((used)) static int at25_probe(struct spi_device *spi)
{
 struct at25_data *at25 = ((void*)0);
 const struct spi_eeprom *chip;
 int err;
 int sr;
 int addrlen;


 chip = spi->dev.platform_data;
 if (!chip) {
  dev_dbg(&spi->dev, "no chip description\n");
  err = -ENODEV;
  goto fail;
 }


 if (chip->flags & EE_ADDR1)
  addrlen = 1;
 else if (chip->flags & EE_ADDR2)
  addrlen = 2;
 else if (chip->flags & EE_ADDR3)
  addrlen = 3;
 else {
  dev_dbg(&spi->dev, "unsupported address type\n");
  err = -EINVAL;
  goto fail;
 }





 sr = spi_w8r8(spi, AT25_RDSR);
 if (sr < 0 || sr & AT25_SR_nRDY) {
  dev_dbg(&spi->dev, "rdsr --> %d (%02x)\n", sr, sr);
  err = -ENXIO;
  goto fail;
 }

 if (!(at25 = kzalloc(sizeof *at25, GFP_KERNEL))) {
  err = -ENOMEM;
  goto fail;
 }

 mutex_init(&at25->lock);
 at25->chip = *chip;
 at25->spi = spi_dev_get(spi);
 dev_set_drvdata(&spi->dev, at25);
 at25->addrlen = addrlen;
 at25->bin.attr.name = "eeprom";
 at25->bin.attr.mode = S_IRUSR;
 at25->bin.read = at25_bin_read;
 at25->mem.read = at25_mem_read;

 at25->bin.size = at25->chip.byte_len;
 if (!(chip->flags & EE_READONLY)) {
  at25->bin.write = at25_bin_write;
  at25->bin.attr.mode |= S_IWUSR;
  at25->mem.write = at25_mem_write;
 }

 err = sysfs_create_bin_file(&spi->dev.kobj, &at25->bin);
 if (err)
  goto fail;

 if (chip->setup)
  chip->setup(&at25->mem, chip->context);

 dev_info(&spi->dev, "%Zd %s %s eeprom%s, pagesize %u\n",
  (at25->bin.size < 1024)
   ? at25->bin.size
   : (at25->bin.size / 1024),
  (at25->bin.size < 1024) ? "Byte" : "KByte",
  at25->chip.name,
  (chip->flags & EE_READONLY) ? " (readonly)" : "",
  at25->chip.page_size);
 return 0;
fail:
 dev_dbg(&spi->dev, "probe err %d\n", err);
 kfree(at25);
 return err;
}
