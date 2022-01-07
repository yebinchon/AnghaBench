
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int private_data; } ;


 int CAP_SYS_ADMIN ;
 int EBUSY ;
 int EINVAL ;
 int EPERM ;
 int __clear_bit_unlock (int ,int *) ;
 int buffer_opened ;
 int capable (int ) ;
 int dcookie_register () ;
 int dcookie_unregister (int ) ;
 int nonseekable_open (struct inode*,struct file*) ;
 int oprofile_setup () ;
 scalar_t__ test_and_set_bit_lock (int ,int *) ;

__attribute__((used)) static int event_buffer_open(struct inode *inode, struct file *file)
{
 int err = -EPERM;

 if (!capable(CAP_SYS_ADMIN))
  return -EPERM;

 if (test_and_set_bit_lock(0, &buffer_opened))
  return -EBUSY;





 err = -EINVAL;
 file->private_data = dcookie_register();
 if (!file->private_data)
  goto out;

 if ((err = oprofile_setup()))
  goto fail;





 return nonseekable_open(inode, file);

fail:
 dcookie_unregister(file->private_data);
out:
 __clear_bit_unlock(0, &buffer_opened);
 return err;
}
