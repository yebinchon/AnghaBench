
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_context {int dummy; } ;


 int SPU_RUNCNTL_STOP ;
 int spu_backing_runcntl_write (struct spu_context*,int ) ;

__attribute__((used)) static void spu_backing_runcntl_stop(struct spu_context *ctx)
{
 spu_backing_runcntl_write(ctx, SPU_RUNCNTL_STOP);
}
