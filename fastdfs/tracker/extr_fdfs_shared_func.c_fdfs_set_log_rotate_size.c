
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_4__ {scalar_t__ rotate_size; } ;
typedef TYPE_1__ LogContext ;


 int log_set_rotate_time_format (TYPE_1__*,char*) ;

void fdfs_set_log_rotate_size(LogContext *pContext, const int64_t log_rotate_size)
{
 if (log_rotate_size > 0)
 {
  pContext->rotate_size = log_rotate_size;
  log_set_rotate_time_format(pContext, "%Y%m%d_%H%M%S");
 }
 else
 {
  pContext->rotate_size = 0;
  log_set_rotate_time_format(pContext, "%Y%m%d");
 }
}
