
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free_mem_ptr ;
 int malloc_count ;
 int malloc_ptr ;

__attribute__((used)) static void free(void *where)
{
       malloc_count--;
       if (!malloc_count)
  malloc_ptr = free_mem_ptr;
}
