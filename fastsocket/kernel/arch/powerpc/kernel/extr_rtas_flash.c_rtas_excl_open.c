
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int count; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 struct proc_dir_entry* PDE (struct inode*) ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int flash_file_open_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int rtas_excl_open(struct inode *inode, struct file *file)
{
 struct proc_dir_entry *dp = PDE(inode);


 spin_lock(&flash_file_open_lock);
 if (atomic_read(&dp->count) > 2) {
  spin_unlock(&flash_file_open_lock);
  return -EBUSY;
 }

 atomic_inc(&dp->count);
 spin_unlock(&flash_file_open_lock);

 return 0;
}
