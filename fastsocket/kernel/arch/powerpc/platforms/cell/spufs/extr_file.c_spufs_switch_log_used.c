
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spu_context {TYPE_1__* switch_log; } ;
struct TYPE_2__ {int head; int tail; } ;


 int SWITCH_LOG_BUFSIZE ;

__attribute__((used)) static inline int spufs_switch_log_used(struct spu_context *ctx)
{
 return (ctx->switch_log->head - ctx->switch_log->tail) %
  SWITCH_LOG_BUFSIZE;
}
