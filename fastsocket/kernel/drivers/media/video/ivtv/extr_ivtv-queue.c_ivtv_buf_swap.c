
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ivtv_buffer {int bytesused; scalar_t__ buf; } ;


 int swab32s (int *) ;

void ivtv_buf_swap(struct ivtv_buffer *buf)
{
 int i;

 for (i = 0; i < buf->bytesused; i += 4)
  swab32s((u32 *)(buf->buf + i));
}
