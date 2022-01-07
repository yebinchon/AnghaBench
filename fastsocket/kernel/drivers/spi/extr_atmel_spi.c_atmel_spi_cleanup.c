
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {struct atmel_spi_device* controller_state; int controller_data; int master; } ;
struct atmel_spi_device {int dummy; } ;
struct atmel_spi {int lock; struct spi_device* stay; } ;


 int cs_deactivate (struct atmel_spi*,struct spi_device*) ;
 int gpio_free (unsigned int) ;
 int kfree (struct atmel_spi_device*) ;
 struct atmel_spi* spi_master_get_devdata (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void atmel_spi_cleanup(struct spi_device *spi)
{
 struct atmel_spi *as = spi_master_get_devdata(spi->master);
 struct atmel_spi_device *asd = spi->controller_state;
 unsigned gpio = (unsigned) spi->controller_data;
 unsigned long flags;

 if (!asd)
  return;

 spin_lock_irqsave(&as->lock, flags);
 if (as->stay == spi) {
  as->stay = ((void*)0);
  cs_deactivate(as, spi);
 }
 spin_unlock_irqrestore(&as->lock, flags);

 spi->controller_state = ((void*)0);
 gpio_free(gpio);
 kfree(asd);
}
