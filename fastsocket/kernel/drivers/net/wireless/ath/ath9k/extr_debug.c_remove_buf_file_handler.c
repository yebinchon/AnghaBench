
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int debugfs_remove (struct dentry*) ;

__attribute__((used)) static int remove_buf_file_handler(struct dentry *dentry)
{
 debugfs_remove(dentry);

 return 0;
}
