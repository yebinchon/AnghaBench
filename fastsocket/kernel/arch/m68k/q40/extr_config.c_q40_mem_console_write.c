
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console {int dummy; } ;


 unsigned int _cpleft ;
 int * q40_mem_cptr ;

__attribute__((used)) static void q40_mem_console_write(struct console *co, const char *s,
      unsigned int count)
{
 const char *p = s;

 if (count < _cpleft) {
  while (count-- > 0) {
   *q40_mem_cptr = *p++;
   q40_mem_cptr += 4;
   _cpleft--;
  }
 }
}
