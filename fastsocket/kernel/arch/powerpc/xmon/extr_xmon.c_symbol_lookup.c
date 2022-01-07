
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bus_error_jmp ;
 int catch_memory_errors ;
 int getstring (char*,int) ;
 int inchar () ;
 unsigned long kallsyms_lookup_name (char*) ;
 int printf (char*,char*,...) ;
 int scanhex (unsigned long*) ;
 int setjmp (int ) ;
 int sync () ;
 int termch ;
 int xmon_print_symbol (unsigned long,char*,char*) ;

__attribute__((used)) static void
symbol_lookup(void)
{
 int type = inchar();
 unsigned long addr;
 static char tmp[64];

 switch (type) {
 case 'a':
  if (scanhex(&addr))
   xmon_print_symbol(addr, ": ", "\n");
  termch = 0;
  break;
 case 's':
  getstring(tmp, 64);
  if (setjmp(bus_error_jmp) == 0) {
   catch_memory_errors = 1;
   sync();
   addr = kallsyms_lookup_name(tmp);
   if (addr)
    printf("%s: %lx\n", tmp, addr);
   else
    printf("Symbol '%s' not found.\n", tmp);
   sync();
  }
  catch_memory_errors = 0;
  termch = 0;
  break;
 }
}
