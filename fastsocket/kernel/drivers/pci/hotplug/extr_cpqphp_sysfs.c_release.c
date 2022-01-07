
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct ctrl_dbg* private_data; } ;
struct ctrl_dbg {struct ctrl_dbg* data; } ;


 int kfree (struct ctrl_dbg*) ;

__attribute__((used)) static int release(struct inode *inode, struct file *file)
{
 struct ctrl_dbg *dbg = file->private_data;

 kfree(dbg->data);
 kfree(dbg);
 return 0;
}
