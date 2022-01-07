
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bus_error_jmp ;
 int catch_memory_errors ;
 char* kallsyms_lookup (unsigned long,unsigned long*,unsigned long*,int *,int ) ;
 scalar_t__ setjmp (int ) ;
 int sync () ;
 int tmpstr ;

__attribute__((used)) static void get_function_bounds(unsigned long pc, unsigned long *startp,
    unsigned long *endp)
{
 unsigned long size, offset;
 const char *name;

 *startp = *endp = 0;
 if (pc == 0)
  return;
 if (setjmp(bus_error_jmp) == 0) {
  catch_memory_errors = 1;
  sync();
  name = kallsyms_lookup(pc, &size, &offset, ((void*)0), tmpstr);
  if (name != ((void*)0)) {
   *startp = pc - offset;
   *endp = pc - offset + size;
  }
  sync();
 }
 catch_memory_errors = 0;
}
