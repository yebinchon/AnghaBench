
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ vmalloc (unsigned int) ;

__attribute__((used)) static __inline__ void* diva_os_malloc (unsigned long flags, unsigned long size)
{
 void *ret = ((void*)0);

 if (size) {
  ret = (void *) vmalloc((unsigned int) size);
 }
 return (ret);
}
