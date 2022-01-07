
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int * private_data; } ;


 int cycle_kernel_lock () ;

__attribute__((used)) static int
envctrl_open(struct inode *inode, struct file *file)
{
 cycle_kernel_lock();
 file->private_data = ((void*)0);
 return 0;
}
