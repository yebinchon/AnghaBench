
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fast_copy_page (void*,void*) ;
 int in_interrupt () ;
 int slow_copy_page (void*,void*) ;
 scalar_t__ unlikely (int ) ;

void mmx_copy_page(void *to, void *from)
{
 if (unlikely(in_interrupt()))
  slow_copy_page(to, from);
 else
  fast_copy_page(to, from);
}
