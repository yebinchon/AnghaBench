
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int rx_buf_count; int rx_buf_size; scalar_t__ rx_buf; scalar_t__ rx_frame_count; scalar_t__ rx_get; scalar_t__ rx_put; } ;
struct TYPE_4__ {scalar_t__ count; scalar_t__ status; } ;
typedef TYPE_1__ RXBUF ;
typedef TYPE_2__ MGSLPC_INFO ;



__attribute__((used)) static void rx_reset_buffers(MGSLPC_INFO *info)
{
 RXBUF *buf;
 int i;

 info->rx_put = 0;
 info->rx_get = 0;
 info->rx_frame_count = 0;
 for (i=0 ; i < info->rx_buf_count ; i++) {
  buf = (RXBUF*)(info->rx_buf + (i * info->rx_buf_size));
  buf->status = buf->count = 0;
 }
}
