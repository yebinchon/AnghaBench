
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spufs_inode_info {int vfs_inode; } ;


 int inode_init_once (int *) ;

__attribute__((used)) static void
spufs_init_once(void *p)
{
 struct spufs_inode_info *ei = p;

 inode_init_once(&ei->vfs_inode);
}
