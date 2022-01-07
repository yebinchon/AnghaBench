
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct switch_log_entry {int dummy; } ;
struct switch_log {int dummy; } ;
struct spu_context {TYPE_1__* switch_log; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_4__ {struct spu_context* i_ctx; } ;
struct TYPE_3__ {int wait; scalar_t__ tail; scalar_t__ head; } ;


 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_2__* SPUFS_I (struct inode*) ;
 int SWITCH_LOG_BUFSIZE ;
 int init_waitqueue_head (int *) ;
 TYPE_1__* kmalloc (int,int ) ;
 int spu_acquire (struct spu_context*) ;
 int spu_release (struct spu_context*) ;

__attribute__((used)) static int spufs_switch_log_open(struct inode *inode, struct file *file)
{
 struct spu_context *ctx = SPUFS_I(inode)->i_ctx;
 int rc;

 rc = spu_acquire(ctx);
 if (rc)
  return rc;

 if (ctx->switch_log) {
  rc = -EBUSY;
  goto out;
 }

 ctx->switch_log = kmalloc(sizeof(struct switch_log) +
  SWITCH_LOG_BUFSIZE * sizeof(struct switch_log_entry),
  GFP_KERNEL);

 if (!ctx->switch_log) {
  rc = -ENOMEM;
  goto out;
 }

 ctx->switch_log->head = ctx->switch_log->tail = 0;
 init_waitqueue_head(&ctx->switch_log->wait);
 rc = 0;

out:
 spu_release(ctx);
 return rc;
}
