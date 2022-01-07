
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct spu_context {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* runcntl_write ) (struct spu_context*,int ) ;} ;


 int spu_acquire (struct spu_context*) ;
 int spu_release (struct spu_context*) ;
 int stub1 (struct spu_context*,int ) ;

__attribute__((used)) static int spufs_cntl_set(void *data, u64 val)
{
 struct spu_context *ctx = data;
 int ret;

 ret = spu_acquire(ctx);
 if (ret)
  return ret;
 ctx->ops->runcntl_write(ctx, val);
 spu_release(ctx);

 return 0;
}
