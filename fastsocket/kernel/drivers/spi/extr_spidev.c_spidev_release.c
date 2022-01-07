
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spidev_data {int spi_lock; int * spi; struct spidev_data* buffer; int users; } ;
struct inode {int dummy; } ;
struct file {struct spidev_data* private_data; } ;


 int device_list_lock ;
 int kfree (struct spidev_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int spidev_release(struct inode *inode, struct file *filp)
{
 struct spidev_data *spidev;
 int status = 0;

 mutex_lock(&device_list_lock);
 spidev = filp->private_data;
 filp->private_data = ((void*)0);


 spidev->users--;
 if (!spidev->users) {
  int dofree;

  kfree(spidev->buffer);
  spidev->buffer = ((void*)0);


  spin_lock_irq(&spidev->spi_lock);
  dofree = (spidev->spi == ((void*)0));
  spin_unlock_irq(&spidev->spi_lock);

  if (dofree)
   kfree(spidev);
 }
 mutex_unlock(&device_list_lock);

 return status;
}
