
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_size; } ;
struct iattr {int ia_valid; scalar_t__ ia_size; } ;
struct dentry {struct inode* d_inode; } ;


 int ATTR_SIZE ;
 int EINVAL ;
 int inode_setattr (struct inode*,struct iattr*) ;

__attribute__((used)) static int
spufs_setattr(struct dentry *dentry, struct iattr *attr)
{
 struct inode *inode = dentry->d_inode;

 if ((attr->ia_valid & ATTR_SIZE) &&
     (attr->ia_size != inode->i_size))
  return -EINVAL;
 return inode_setattr(inode, attr);
}
