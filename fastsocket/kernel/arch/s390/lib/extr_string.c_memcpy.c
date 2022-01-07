
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* __builtin_memcpy (void*,void const*,size_t) ;

void *memcpy(void *dest, const void *src, size_t n)
{
 return __builtin_memcpy(dest, src, n);
}
