
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_context {int refcount; } ;


 int BUG_ON (int) ;
 int atomic_long_inc (int *) ;
 scalar_t__ atomic_long_read (int *) ;
 int put_io_context (struct io_context*) ;

void copy_io_context(struct io_context **pdst, struct io_context **psrc)
{
 struct io_context *src = *psrc;
 struct io_context *dst = *pdst;

 if (src) {
  BUG_ON(atomic_long_read(&src->refcount) == 0);
  atomic_long_inc(&src->refcount);
  put_io_context(dst);
  *pdst = src;
 }
}
