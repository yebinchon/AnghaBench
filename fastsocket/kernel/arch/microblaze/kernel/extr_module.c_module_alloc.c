
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_debug (char*,unsigned long,unsigned long) ;
 int * vmalloc (unsigned long) ;

void *module_alloc(unsigned long size)
{
 void *ret;
 ret = (size == 0) ? ((void*)0) : vmalloc(size);
 pr_debug("module_alloc (%08lx@%08lx)\n", size, (unsigned long int)ret);
 return ret;
}
