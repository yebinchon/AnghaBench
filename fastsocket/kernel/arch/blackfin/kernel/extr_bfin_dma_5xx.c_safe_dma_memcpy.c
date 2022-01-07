
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VERIFY_READ ;
 int VERIFY_WRITE ;
 int access_ok (int ,void const*,size_t) ;
 void* dma_memcpy (void*,void const*,size_t) ;

void *safe_dma_memcpy(void *dst, const void *src, size_t size)
{
 if (!access_ok(VERIFY_WRITE, dst, size))
  return ((void*)0);
 if (!access_ok(VERIFY_READ, src, size))
  return ((void*)0);
 return dma_memcpy(dst, src, size);
}
