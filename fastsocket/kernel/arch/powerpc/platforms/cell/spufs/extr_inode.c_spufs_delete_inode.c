
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spufs_inode_info {scalar_t__ i_gang; scalar_t__ i_ctx; } ;
struct inode {int dummy; } ;


 struct spufs_inode_info* SPUFS_I (struct inode*) ;
 int clear_inode (struct inode*) ;
 int put_spu_context (scalar_t__) ;
 int put_spu_gang (scalar_t__) ;

__attribute__((used)) static void
spufs_delete_inode(struct inode *inode)
{
 struct spufs_inode_info *ei = SPUFS_I(inode);

 if (ei->i_ctx)
  put_spu_context(ei->i_ctx);
 if (ei->i_gang)
  put_spu_gang(ei->i_gang);
 clear_inode(inode);
}
