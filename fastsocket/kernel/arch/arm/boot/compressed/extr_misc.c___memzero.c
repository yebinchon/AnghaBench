
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* __ptr_t ;



void __memzero (__ptr_t s, size_t n)
{
 union { void *vp; unsigned long *ulp; unsigned char *ucp; } u;
 int i;

 u.vp = s;

 for (i = n >> 5; i > 0; i--) {
  *u.ulp++ = 0;
  *u.ulp++ = 0;
  *u.ulp++ = 0;
  *u.ulp++ = 0;
  *u.ulp++ = 0;
  *u.ulp++ = 0;
  *u.ulp++ = 0;
  *u.ulp++ = 0;
 }

 if (n & 1 << 4) {
  *u.ulp++ = 0;
  *u.ulp++ = 0;
  *u.ulp++ = 0;
  *u.ulp++ = 0;
 }

 if (n & 1 << 3) {
  *u.ulp++ = 0;
  *u.ulp++ = 0;
 }

 if (n & 1 << 2)
  *u.ulp++ = 0;

 if (n & 1 << 1) {
  *u.ucp++ = 0;
  *u.ucp++ = 0;
 }

 if (n & 1)
  *u.ucp++ = 0;
}
