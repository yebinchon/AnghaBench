
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_context {int dummy; } ;


 int SWITCH_LOG_BUFSIZE ;
 int spufs_switch_log_used (struct spu_context*) ;

__attribute__((used)) static inline int spufs_switch_log_avail(struct spu_context *ctx)
{
 return SWITCH_LOG_BUFSIZE - spufs_switch_log_used(ctx);
}
