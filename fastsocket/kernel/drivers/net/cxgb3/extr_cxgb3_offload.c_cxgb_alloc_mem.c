
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 void* kzalloc (unsigned long,int ) ;
 void* vzalloc (unsigned long) ;

void *cxgb_alloc_mem(unsigned long size)
{
 void *p = kzalloc(size, GFP_KERNEL);

 if (!p)
  p = vzalloc(size);
 return p;
}
