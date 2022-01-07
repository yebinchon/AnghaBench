
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_async {int buf_read_alloc_count; int buf_read_count; } ;



__attribute__((used)) static inline unsigned comedi_buf_read_n_allocated(struct comedi_async *async)
{
 return async->buf_read_alloc_count - async->buf_read_count;
}
