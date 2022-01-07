
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct console {int dummy; } ;
struct TYPE_2__ {unsigned char rhrb_thrb; int srb_csrb; } ;


 TYPE_1__ sio01 ;

void dn_serial_console_write (struct console *co, const char *str,unsigned int count)
{
   while(count--) {
 if (*str == '\n') {
 sio01.rhrb_thrb = (unsigned char)'\r';
 while (!(sio01.srb_csrb & 0x4))
                ;
 }
    sio01.rhrb_thrb = (unsigned char)*str++;
    while (!(sio01.srb_csrb & 0x4))
            ;
  }
}
