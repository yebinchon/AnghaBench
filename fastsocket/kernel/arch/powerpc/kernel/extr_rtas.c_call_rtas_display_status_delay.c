
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int call_rtas_display_status (char) ;
 int mdelay (int) ;
 int udelay (int) ;

__attribute__((used)) static void call_rtas_display_status_delay(char c)
{
 static int pending_newline = 0;
 static int width = 16;

 if (c == '\n') {
  while (width-- > 0)
   call_rtas_display_status(' ');
  width = 16;
  mdelay(500);
  pending_newline = 1;
 } else {
  if (pending_newline) {
   call_rtas_display_status('\r');
   call_rtas_display_status('\n');
  }
  pending_newline = 0;
  if (width--) {
   call_rtas_display_status(c);
   udelay(10000);
  }
 }
}
