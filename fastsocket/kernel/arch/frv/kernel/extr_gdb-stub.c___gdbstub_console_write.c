
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console {int dummy; } ;


 int gdbstub_send_packet (char*) ;
 int mem2hex (char const*,char*,int,int ) ;

__attribute__((used)) static void __gdbstub_console_write(struct console *co, const char *p, unsigned n)
{
 char outbuf[26];
 int qty;

 outbuf[0] = 'O';

 while (n > 0) {
  qty = 1;

  while (n > 0 && qty < 20) {
   mem2hex(p, outbuf + qty, 2, 0);
   qty += 2;
   if (*p == 0x0a) {
    outbuf[qty++] = '0';
    outbuf[qty++] = 'd';
   }
   p++;
   n--;
  }

  outbuf[qty] = 0;
  gdbstub_send_packet(outbuf);
 }
}
