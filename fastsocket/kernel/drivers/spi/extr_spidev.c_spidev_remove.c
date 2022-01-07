
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spidev_data {scalar_t__ users; int devt; int device_entry; int spi_lock; int * spi; } ;
struct spi_device {int dummy; } ;


 int MINOR (int ) ;
 int clear_bit (int ,int ) ;
 int device_destroy (int ,int ) ;
 int device_list_lock ;
 int kfree (struct spidev_data*) ;
 int list_del (int *) ;
 int minors ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct spidev_data* spi_get_drvdata (struct spi_device*) ;
 int spi_set_drvdata (struct spi_device*,int *) ;
 int spidev_class ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int spidev_remove(struct spi_device *spi)
{
 struct spidev_data *spidev = spi_get_drvdata(spi);


 spin_lock_irq(&spidev->spi_lock);
 spidev->spi = ((void*)0);
 spi_set_drvdata(spi, ((void*)0));
 spin_unlock_irq(&spidev->spi_lock);


 mutex_lock(&device_list_lock);
 list_del(&spidev->device_entry);
 device_destroy(spidev_class, spidev->devt);
 clear_bit(MINOR(spidev->devt), minors);
 if (spidev->users == 0)
  kfree(spidev);
 mutex_unlock(&device_list_lock);

 return 0;
}
