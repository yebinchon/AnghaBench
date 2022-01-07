
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* vmalloc (unsigned long) ;

void *
module_alloc(unsigned long size)
{
 if (size == 0)
  return ((void*)0);
 return vmalloc(size);
}
