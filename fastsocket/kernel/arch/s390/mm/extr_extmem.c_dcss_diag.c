
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DCSS_SEGEXT ;
 int dcss_set_subcodes () ;
 int scode_set ;

__attribute__((used)) static inline int
dcss_diag(int *func, void *parameter,
           unsigned long *ret1, unsigned long *ret2)
{
 unsigned long rx, ry;
 int rc;

 if (scode_set == 0) {
  rc = dcss_set_subcodes();
  if (rc < 0)
   return rc;
  scode_set = 1;
 }
 rx = (unsigned long) parameter;
 ry = (unsigned long) *func;
 asm volatile(
  "	diag	%0,%1,0x64\n"
  "	ipm	%2\n"
  "	srl	%2,28\n"
  : "+d" (rx), "+d" (ry), "=d" (rc) : : "cc");

 *ret1 = rx;
 *ret2 = ry;
 return rc;
}
