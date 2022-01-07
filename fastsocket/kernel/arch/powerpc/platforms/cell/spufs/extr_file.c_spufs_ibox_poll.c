
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spu_context {TYPE_1__* ops; int state_mutex; int ibox_wq; } ;
struct file {struct spu_context* private_data; } ;
typedef int poll_table ;
struct TYPE_2__ {unsigned int (* mbox_stat_poll ) (struct spu_context*,int) ;} ;


 int POLLIN ;
 int POLLRDNORM ;
 int mutex_lock (int *) ;
 int poll_wait (struct file*,int *,int *) ;
 int spu_release (struct spu_context*) ;
 unsigned int stub1 (struct spu_context*,int) ;

__attribute__((used)) static unsigned int spufs_ibox_poll(struct file *file, poll_table *wait)
{
 struct spu_context *ctx = file->private_data;
 unsigned int mask;

 poll_wait(file, &ctx->ibox_wq, wait);





 mutex_lock(&ctx->state_mutex);
 mask = ctx->ops->mbox_stat_poll(ctx, POLLIN | POLLRDNORM);
 spu_release(ctx);

 return mask;
}
