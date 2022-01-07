
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct console {int dummy; } ;
struct TYPE_2__ {int srb_csrb; int rhrb_thrb; } ;


 int barrier () ;
 TYPE_1__ sio01 ;

int dn_serial_console_wait_key(struct console *co) {

 while(!(sio01.srb_csrb & 1))
  barrier();
 return sio01.rhrb_thrb;
}
