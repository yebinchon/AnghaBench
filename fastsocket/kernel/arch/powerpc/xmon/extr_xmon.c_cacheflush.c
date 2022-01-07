
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long L1_CACHE_BYTES ;
 int __delay (int) ;
 scalar_t__ adrs ;
 int bus_error_jmp ;
 int catch_memory_errors ;
 int cflush (void*) ;
 int cinval (void*) ;
 int inchar () ;
 int scanhex (unsigned long*) ;
 scalar_t__ setjmp (int ) ;
 int sync () ;
 char termch ;

__attribute__((used)) static void cacheflush(void)
{
 int cmd;
 unsigned long nflush;

 cmd = inchar();
 if (cmd != 'i')
  termch = cmd;
 scanhex((void *)&adrs);
 if (termch != '\n')
  termch = 0;
 nflush = 1;
 scanhex(&nflush);
 nflush = (nflush + L1_CACHE_BYTES - 1) / L1_CACHE_BYTES;
 if (setjmp(bus_error_jmp) == 0) {
  catch_memory_errors = 1;
  sync();

  if (cmd != 'i') {
   for (; nflush > 0; --nflush, adrs += L1_CACHE_BYTES)
    cflush((void *) adrs);
  } else {
   for (; nflush > 0; --nflush, adrs += L1_CACHE_BYTES)
    cinval((void *) adrs);
  }
  sync();

  __delay(200);
 }
 catch_memory_errors = 0;
}
