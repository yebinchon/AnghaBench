
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {TYPE_1__* f_op; } ;
struct TYPE_2__ {scalar_t__ write; } ;


 int CAP_SYS_ADMIN ;
 int EBUSY ;
 int EPERM ;
 int capable (int ) ;
 int fput (struct file*) ;
 int get_file (struct file*) ;
 struct file* redirect ;
 int redirect_lock ;
 scalar_t__ redirected_tty_write ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int tioccons(struct file *file)
{
 if (!capable(CAP_SYS_ADMIN))
  return -EPERM;
 if (file->f_op->write == redirected_tty_write) {
  struct file *f;
  spin_lock(&redirect_lock);
  f = redirect;
  redirect = ((void*)0);
  spin_unlock(&redirect_lock);
  if (f)
   fput(f);
  return 0;
 }
 spin_lock(&redirect_lock);
 if (redirect) {
  spin_unlock(&redirect_lock);
  return -EBUSY;
 }
 get_file(file);
 redirect = file;
 spin_unlock(&redirect_lock);
 return 0;
}
