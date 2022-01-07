
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_context {int refcount; } ;
typedef int gfp_t ;


 int atomic_long_inc_not_zero (int *) ;
 struct io_context* current_io_context (int ,int) ;
 scalar_t__ unlikely (int) ;

struct io_context *get_io_context(gfp_t gfp_flags, int node)
{
 struct io_context *ret = ((void*)0);





 do {
  ret = current_io_context(gfp_flags, node);
  if (unlikely(!ret))
   break;
 } while (!atomic_long_inc_not_zero(&ret->refcount));

 return ret;
}
