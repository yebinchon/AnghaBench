
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef int u16 ;


 int __delay (int) ;
 int bus_error_jmp ;
 int catch_memory_errors ;
 scalar_t__ setjmp (int ) ;
 int sync () ;

__attribute__((used)) static int
mread(unsigned long adrs, void *buf, int size)
{
 volatile int n;
 char *p, *q;

 n = 0;
 if (setjmp(bus_error_jmp) == 0) {
  catch_memory_errors = 1;
  sync();
  p = (char *)adrs;
  q = (char *)buf;
  switch (size) {
  case 2:
   *(u16 *)q = *(u16 *)p;
   break;
  case 4:
   *(u32 *)q = *(u32 *)p;
   break;
  case 8:
   *(u64 *)q = *(u64 *)p;
   break;
  default:
   for( ; n < size; ++n) {
    *q++ = *p++;
    sync();
   }
  }
  sync();

  __delay(200);
  n = size;
 }
 catch_memory_errors = 0;
 return n;
}
