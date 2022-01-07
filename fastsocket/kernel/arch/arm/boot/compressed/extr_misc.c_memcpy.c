
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __ptr_t ;



__attribute__((used)) static inline __ptr_t memcpy(__ptr_t __dest, __const __ptr_t __src,
       size_t __n)
{
 int i = 0;
 unsigned char *d = (unsigned char *)__dest, *s = (unsigned char *)__src;

 for (i = __n >> 3; i > 0; i--) {
  *d++ = *s++;
  *d++ = *s++;
  *d++ = *s++;
  *d++ = *s++;
  *d++ = *s++;
  *d++ = *s++;
  *d++ = *s++;
  *d++ = *s++;
 }

 if (__n & 1 << 2) {
  *d++ = *s++;
  *d++ = *s++;
  *d++ = *s++;
  *d++ = *s++;
 }

 if (__n & 1 << 1) {
  *d++ = *s++;
  *d++ = *s++;
 }

 if (__n & 1)
  *d++ = *s++;

 return __dest;
}
