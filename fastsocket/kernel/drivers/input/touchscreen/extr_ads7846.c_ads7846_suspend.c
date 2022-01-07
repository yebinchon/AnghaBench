
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;
struct ads7846 {int is_suspended; int lock; } ;
typedef int pm_message_t ;


 int ads7846_disable (struct ads7846*) ;
 struct ads7846* dev_get_drvdata (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int ads7846_suspend(struct spi_device *spi, pm_message_t message)
{
 struct ads7846 *ts = dev_get_drvdata(&spi->dev);

 spin_lock_irq(&ts->lock);

 ts->is_suspended = 1;
 ads7846_disable(ts);

 spin_unlock_irq(&ts->lock);

 return 0;

}
