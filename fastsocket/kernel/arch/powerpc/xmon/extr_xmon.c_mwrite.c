
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
 int printf (char*,unsigned long) ;
 scalar_t__ setjmp (int ) ;
 int sync () ;

__attribute__((used)) static int
mwrite(unsigned long adrs, void *buf, int size)
{
 volatile int n;
 char *p, *q;

 n = 0;
 if (setjmp(bus_error_jmp) == 0) {
  catch_memory_errors = 1;
  sync();
  p = (char *) adrs;
  q = (char *) buf;
  switch (size) {
  case 2:
   *(u16 *)p = *(u16 *)q;
   break;
  case 4:
   *(u32 *)p = *(u32 *)q;
   break;
  case 8:
   *(u64 *)p = *(u64 *)q;
   break;
  default:
   for ( ; n < size; ++n) {
    *p++ = *q++;
    sync();
   }
  }
  sync();

  __delay(200);
  n = size;
 } else {
  printf("*** Error writing address %x\n", adrs + n);
 }
 catch_memory_errors = 0;
 return n;
}
