
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_private; } ;


 int generic_delete_inode (struct inode*) ;
 int kfree (int ) ;

__attribute__((used)) static void hypfs_drop_inode(struct inode *inode)
{
 kfree(inode->i_private);
 generic_delete_inode(inode);
}
