
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct hwi_async_pdu_context {TYPE_1__* async_entry; } ;
struct TYPE_2__ {struct list_head data_busy_list; struct list_head header_busy_list; } ;



__attribute__((used)) static struct list_head *hwi_get_async_busy_list(struct hwi_async_pdu_context
       *pasync_ctx, unsigned int is_header,
       unsigned int host_write_ptr)
{
 if (is_header)
  return &pasync_ctx->async_entry[host_write_ptr].
      header_busy_list;
 else
  return &pasync_ctx->async_entry[host_write_ptr].data_busy_list;
}
