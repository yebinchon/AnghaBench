
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spidev_data {int spi_lock; int * spi; } ;
struct spi_message {int status; int actual_length; int * context; int complete; } ;
typedef int ssize_t ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int ESHUTDOWN ;
 int done ;
 int spi_async (int *,struct spi_message*) ;
 int spidev_complete ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static ssize_t
spidev_sync(struct spidev_data *spidev, struct spi_message *message)
{
 DECLARE_COMPLETION_ONSTACK(done);
 int status;

 message->complete = spidev_complete;
 message->context = &done;

 spin_lock_irq(&spidev->spi_lock);
 if (spidev->spi == ((void*)0))
  status = -ESHUTDOWN;
 else
  status = spi_async(spidev->spi, message);
 spin_unlock_irq(&spidev->spi_lock);

 if (status == 0) {
  wait_for_completion(&done);
  status = message->status;
  if (status == 0)
   status = message->actual_length;
 }
 return status;
}
