
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console {int dummy; } ;


 int cfe_cons_handle ;
 int cfe_write (int ,char const*,unsigned int) ;

__attribute__((used)) static void cfe_console_write(struct console *cons, const char *str,
         unsigned int count)
{
 int i, last, written;

 for (i=0, last=0; i<count; i++) {
  if (!str[i])

   return;
  if (str[i] == '\n') {
   do {
    written = cfe_write(cfe_cons_handle, &str[last], i-last);
    if (written < 0)
     ;
    last += written;
   } while (last < i);
   while (cfe_write(cfe_cons_handle, "\r", 1) <= 0)
    ;
  }
 }
 if (last != count) {
  do {
   written = cfe_write(cfe_cons_handle, &str[last], count-last);
   if (written < 0)
    ;
   last += written;
  } while (last < count);
 }

}
