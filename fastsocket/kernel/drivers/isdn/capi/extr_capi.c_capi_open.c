
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int * private_data; } ;


 int EEXIST ;
 int ENOMEM ;
 int * capidev_alloc () ;
 int lock_kernel () ;
 int nonseekable_open (struct inode*,struct file*) ;
 int unlock_kernel () ;

__attribute__((used)) static int
capi_open(struct inode *inode, struct file *file)
{
 int ret;

 lock_kernel();
 if (file->private_data)
  ret = -EEXIST;
 else if ((file->private_data = capidev_alloc()) == ((void*)0))
  ret = -ENOMEM;
 else
  ret = nonseekable_open(inode, file);
 unlock_kernel();
 return ret;
}
