
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_master {int dummy; } ;
struct TYPE_2__ {void* platform_data; } ;
struct spi_device {int * controller_state; int controller_data; TYPE_1__ dev; int modalias; int irq; int mode; int max_speed_hz; int chip_select; } ;
struct spi_board_info {int controller_data; scalar_t__ platform_data; int modalias; int irq; int mode; int max_speed_hz; int chip_select; } ;


 int WARN_ON (int) ;
 int spi_add_device (struct spi_device*) ;
 struct spi_device* spi_alloc_device (struct spi_master*) ;
 int spi_dev_put (struct spi_device*) ;
 int strlcpy (int ,int ,int) ;
 int strlen (int ) ;

struct spi_device *spi_new_device(struct spi_master *master,
      struct spi_board_info *chip)
{
 struct spi_device *proxy;
 int status;
 proxy = spi_alloc_device(master);
 if (!proxy)
  return ((void*)0);

 WARN_ON(strlen(chip->modalias) >= sizeof(proxy->modalias));

 proxy->chip_select = chip->chip_select;
 proxy->max_speed_hz = chip->max_speed_hz;
 proxy->mode = chip->mode;
 proxy->irq = chip->irq;
 strlcpy(proxy->modalias, chip->modalias, sizeof(proxy->modalias));
 proxy->dev.platform_data = (void *) chip->platform_data;
 proxy->controller_data = chip->controller_data;
 proxy->controller_state = ((void*)0);

 status = spi_add_device(proxy);
 if (status < 0) {
  spi_dev_put(proxy);
  return ((void*)0);
 }

 return proxy;
}
