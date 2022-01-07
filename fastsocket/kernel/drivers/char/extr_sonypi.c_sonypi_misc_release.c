
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int lock; int open_count; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__ sonypi_device ;

__attribute__((used)) static int sonypi_misc_release(struct inode *inode, struct file *file)
{
 mutex_lock(&sonypi_device.lock);
 sonypi_device.open_count--;
 mutex_unlock(&sonypi_device.lock);
 return 0;
}
