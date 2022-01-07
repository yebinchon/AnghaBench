
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int UM_GFP_KERNEL ;
 int UM_KERN_PAGE_SIZE ;
 void* __real_malloc (int) ;
 int errno ;
 int kmalloc_ok ;
 void* uml_kmalloc (int,int ) ;
 void* vmalloc (int) ;

void *__wrap_malloc(int size)
{
 void *ret;

 if (!kmalloc_ok)
  return __real_malloc(size);
 else if (size <= UM_KERN_PAGE_SIZE)

  ret = uml_kmalloc(size, UM_GFP_KERNEL);
 else ret = vmalloc(size);





 if (ret == ((void*)0))
  errno = ENOMEM;

 return ret;
}
