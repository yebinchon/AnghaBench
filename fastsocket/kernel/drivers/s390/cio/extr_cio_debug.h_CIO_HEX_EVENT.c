
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ buf_size; } ;


 TYPE_1__* cio_debug_trace_id ;
 int debug_event (TYPE_1__*,int,void*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void CIO_HEX_EVENT(int level, void *data, int length)
{
 if (unlikely(!cio_debug_trace_id))
  return;
 while (length > 0) {
  debug_event(cio_debug_trace_id, level, data, length);
  length -= cio_debug_trace_id->buf_size;
  data += cio_debug_trace_id->buf_size;
 }
}
