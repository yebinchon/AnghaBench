
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int udbg_getc_poll_beat () ;

__attribute__((used)) static int udbg_getc_beat(void)
{
 int ch;
 for (;;) {
  ch = udbg_getc_poll_beat();
  if (ch == -1) {

   volatile unsigned long delay;
   for (delay = 0; delay < 2000000; delay++)
    ;
  } else {
   return ch;
  }
 }
}
