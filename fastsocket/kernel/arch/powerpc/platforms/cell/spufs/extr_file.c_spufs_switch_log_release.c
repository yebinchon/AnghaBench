
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spu_context {int * switch_log; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct spu_context* i_ctx; } ;


 TYPE_1__* SPUFS_I (struct inode*) ;
 int kfree (int *) ;
 int spu_acquire (struct spu_context*) ;
 int spu_release (struct spu_context*) ;

__attribute__((used)) static int spufs_switch_log_release(struct inode *inode, struct file *file)
{
 struct spu_context *ctx = SPUFS_I(inode)->i_ctx;
 int rc;

 rc = spu_acquire(ctx);
 if (rc)
  return rc;

 kfree(ctx->switch_log);
 ctx->switch_log = ((void*)0);
 spu_release(ctx);

 return 0;
}
