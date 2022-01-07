
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int * private_data; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 unsigned int PC8736X_GPIO_CT ;
 int cycle_kernel_lock () ;
 int dev_dbg (int *,char*,unsigned int) ;
 unsigned int iminor (struct inode*) ;
 int nonseekable_open (struct inode*,struct file*) ;
 int pc8736x_gpio_ops ;
 TYPE_1__* pdev ;

__attribute__((used)) static int pc8736x_gpio_open(struct inode *inode, struct file *file)
{
 unsigned m = iminor(inode);
 file->private_data = &pc8736x_gpio_ops;

 cycle_kernel_lock();
 dev_dbg(&pdev->dev, "open %d\n", m);

 if (m >= PC8736X_GPIO_CT)
  return -EINVAL;
 return nonseekable_open(inode, file);
}
