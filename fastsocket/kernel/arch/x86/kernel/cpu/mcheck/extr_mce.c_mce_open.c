
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int f_flags; } ;


 int EBUSY ;
 int O_EXCL ;
 int mce_state_lock ;
 int nonseekable_open (struct inode*,struct file*) ;
 scalar_t__ open_count ;
 int open_exclu ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int mce_open(struct inode *inode, struct file *file)
{
 spin_lock(&mce_state_lock);

 if (open_exclu || (open_count && (file->f_flags & O_EXCL))) {
  spin_unlock(&mce_state_lock);

  return -EBUSY;
 }

 if (file->f_flags & O_EXCL)
  open_exclu = 1;
 open_count++;

 spin_unlock(&mce_state_lock);

 return nonseekable_open(inode, file);
}
