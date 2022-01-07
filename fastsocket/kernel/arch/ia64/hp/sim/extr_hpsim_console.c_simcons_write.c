
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console {int dummy; } ;


 int SSC_PUTCHAR ;
 int ia64_ssc (char,int ,int ,int ,int ) ;

__attribute__((used)) static void
simcons_write (struct console *cons, const char *buf, unsigned count)
{
 unsigned long ch;

 while (count-- > 0) {
  ch = *buf++;
  ia64_ssc(ch, 0, 0, 0, SSC_PUTCHAR);
  if (ch == '\n')
    ia64_ssc('\r', 0, 0, 0, SSC_PUTCHAR);
 }
}
