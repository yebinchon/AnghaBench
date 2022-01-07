
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* __memset (void*,int,size_t) ;

void *memset(void *s, int c, size_t count)
{
 return __memset(s, c, count);
}
