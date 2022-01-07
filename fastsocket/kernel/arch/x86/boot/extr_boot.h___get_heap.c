
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* HEAP ;

__attribute__((used)) static inline char *__get_heap(size_t s, size_t a, size_t n)
{
 char *tmp;

 HEAP = (char *)(((size_t)HEAP+(a-1)) & ~(a-1));
 tmp = HEAP;
 HEAP += s*n;
 return tmp;
}
