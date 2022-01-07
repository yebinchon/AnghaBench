
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __inline_memcpy (void*,void const*,unsigned int) ;

void __memcpy_toio(unsigned long dst, const void *src, unsigned len)
{
 __inline_memcpy((void *)dst, src, len);
}
