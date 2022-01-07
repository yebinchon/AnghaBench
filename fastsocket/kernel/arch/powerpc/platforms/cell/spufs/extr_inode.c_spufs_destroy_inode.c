
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int SPUFS_I (struct inode*) ;
 int kmem_cache_free (int ,int ) ;
 int spufs_inode_cache ;

__attribute__((used)) static void
spufs_destroy_inode(struct inode *inode)
{
 kmem_cache_free(spufs_inode_cache, SPUFS_I(inode));
}
