
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_async {int buf_write_alloc_count; int buf_write_count; } ;



__attribute__((used)) static inline unsigned comedi_buf_write_n_allocated(struct comedi_async *async)
{
 return async->buf_write_alloc_count - async->buf_write_count;
}
