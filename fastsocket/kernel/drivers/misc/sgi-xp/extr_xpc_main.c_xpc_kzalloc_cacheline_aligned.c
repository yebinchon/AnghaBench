
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int gfp_t ;


 scalar_t__ L1_CACHE_ALIGN (scalar_t__) ;
 size_t L1_CACHE_BYTES ;
 int kfree (void*) ;
 void* kzalloc (size_t,int ) ;

void *
xpc_kzalloc_cacheline_aligned(size_t size, gfp_t flags, void **base)
{

 *base = kzalloc(size, flags);
 if (*base == ((void*)0))
  return ((void*)0);

 if ((u64)*base == L1_CACHE_ALIGN((u64)*base))
  return *base;

 kfree(*base);


 *base = kzalloc(size + L1_CACHE_BYTES, flags);
 if (*base == ((void*)0))
  return ((void*)0);

 return (void *)L1_CACHE_ALIGN((u64)*base);
}
