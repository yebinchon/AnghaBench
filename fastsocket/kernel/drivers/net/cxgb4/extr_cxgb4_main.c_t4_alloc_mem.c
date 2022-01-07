
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 void* kzalloc (size_t,int ) ;
 void* vzalloc (size_t) ;

void *t4_alloc_mem(size_t size)
{
 void *p = kzalloc(size, GFP_KERNEL);

 if (!p)
  p = vzalloc(size);
 return p;
}
