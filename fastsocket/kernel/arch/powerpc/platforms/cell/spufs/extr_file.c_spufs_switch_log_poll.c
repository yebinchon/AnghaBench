
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct spu_context {TYPE_3__* switch_log; } ;
struct inode {int dummy; } ;
struct TYPE_6__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
typedef int poll_table ;
struct TYPE_8__ {struct spu_context* i_ctx; } ;
struct TYPE_7__ {int wait; } ;
struct TYPE_5__ {struct inode* d_inode; } ;


 unsigned int POLLIN ;
 TYPE_4__* SPUFS_I (struct inode*) ;
 int poll_wait (struct file*,int *,int *) ;
 int spu_acquire (struct spu_context*) ;
 int spu_release (struct spu_context*) ;
 scalar_t__ spufs_switch_log_used (struct spu_context*) ;

__attribute__((used)) static unsigned int spufs_switch_log_poll(struct file *file, poll_table *wait)
{
 struct inode *inode = file->f_path.dentry->d_inode;
 struct spu_context *ctx = SPUFS_I(inode)->i_ctx;
 unsigned int mask = 0;
 int rc;

 poll_wait(file, &ctx->switch_log->wait, wait);

 rc = spu_acquire(ctx);
 if (rc)
  return rc;

 if (spufs_switch_log_used(ctx) > 0)
  mask |= POLLIN;

 spu_release(ctx);

 return mask;
}
