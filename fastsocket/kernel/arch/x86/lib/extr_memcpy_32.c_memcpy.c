
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* __memcpy (void*,void const*,size_t) ;
 void* __memcpy3d (void*,void const*,size_t) ;

void *memcpy(void *to, const void *from, size_t n)
{



 return __memcpy(to, from, n);

}
