
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_stream {int buffer_target_count; } ;



int pvr2_stream_get_buffer_count(struct pvr2_stream *sp)
{
 return sp->buffer_target_count;
}
