
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 void* ERR_PTR (int ) ;
 int memset (void*,int ,unsigned long) ;
 void* module_map (unsigned long) ;

void *module_alloc(unsigned long size)
{
 void *ret;


 if (size == 0)
  return ((void*)0);

 ret = module_map(size);
 if (!ret)
  ret = ERR_PTR(-ENOMEM);
 else
  memset(ret, 0, size);

 return ret;
}
