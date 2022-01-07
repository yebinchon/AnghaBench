
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int lock; int open_count; int fifo; } ;


 int kfifo_reset (int ) ;
 int lock_kernel () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__ sonypi_device ;
 int unlock_kernel () ;

__attribute__((used)) static int sonypi_misc_open(struct inode *inode, struct file *file)
{
 lock_kernel();
 mutex_lock(&sonypi_device.lock);

 if (!sonypi_device.open_count)
  kfifo_reset(sonypi_device.fifo);
 sonypi_device.open_count++;
 mutex_unlock(&sonypi_device.lock);
 unlock_kernel();
 return 0;
}
