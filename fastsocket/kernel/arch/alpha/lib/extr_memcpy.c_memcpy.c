
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __memcpy_aligned_up (unsigned long,unsigned long,size_t) ;
 int __memcpy_unaligned_up (unsigned long,unsigned long,size_t) ;

void * memcpy(void * dest, const void *src, size_t n)
{
 if (!(((unsigned long) dest ^ (unsigned long) src) & 7)) {
  __memcpy_aligned_up ((unsigned long) dest, (unsigned long) src,
         n);
  return dest;
 }
 __memcpy_unaligned_up ((unsigned long) dest, (unsigned long) src, n);
 return dest;
}
