
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {TYPE_1__* d_inode; } ;
struct c4iw_dev {int debugfs_root; } ;
struct TYPE_2__ {int i_size; } ;


 int S_IWUSR ;
 struct dentry* debugfs_create_file (char*,int ,int ,void*,int *) ;
 int qp_debugfs_fops ;
 int stag_debugfs_fops ;

__attribute__((used)) static int setup_debugfs(struct c4iw_dev *devp)
{
 struct dentry *de;

 if (!devp->debugfs_root)
  return -1;

 de = debugfs_create_file("qps", S_IWUSR, devp->debugfs_root,
     (void *)devp, &qp_debugfs_fops);
 if (de && de->d_inode)
  de->d_inode->i_size = 4096;

 de = debugfs_create_file("stags", S_IWUSR, devp->debugfs_root,
     (void *)devp, &stag_debugfs_fops);
 if (de && de->d_inode)
  de->d_inode->i_size = 4096;
 return 0;
}
