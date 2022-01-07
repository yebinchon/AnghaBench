
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_handler {struct file_operations const* fops; } ;
struct inode {int dummy; } ;
typedef struct file_operations {int (* open ) (struct inode*,struct file*) ;} const file_operations ;
struct file {struct file_operations const* f_op; } ;


 int ENODEV ;
 void* fops_get (struct file_operations const*) ;
 int fops_put (struct file_operations const*) ;
 int iminor (struct inode*) ;
 struct input_handler** input_table ;
 int lock_kernel () ;
 int stub1 (struct inode*,struct file*) ;
 int unlock_kernel () ;

__attribute__((used)) static int input_open_file(struct inode *inode, struct file *file)
{
 struct input_handler *handler;
 const struct file_operations *old_fops, *new_fops = ((void*)0);
 int err;

 lock_kernel();

 handler = input_table[iminor(inode) >> 5];
 if (!handler || !(new_fops = fops_get(handler->fops))) {
  err = -ENODEV;
  goto out;
 }





 if (!new_fops->open) {
  fops_put(new_fops);
  err = -ENODEV;
  goto out;
 }
 old_fops = file->f_op;
 file->f_op = new_fops;

 err = new_fops->open(inode, file);

 if (err) {
  fops_put(file->f_op);
  file->f_op = fops_get(old_fops);
 }
 fops_put(old_fops);
out:
 unlock_kernel();
 return err;
}
