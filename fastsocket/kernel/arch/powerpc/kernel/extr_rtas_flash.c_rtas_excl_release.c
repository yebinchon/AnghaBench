
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int count; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;


 struct proc_dir_entry* PDE (struct inode*) ;
 int atomic_dec (int *) ;

__attribute__((used)) static int rtas_excl_release(struct inode *inode, struct file *file)
{
 struct proc_dir_entry *dp = PDE(inode);

 atomic_dec(&dp->count);

 return 0;
}
