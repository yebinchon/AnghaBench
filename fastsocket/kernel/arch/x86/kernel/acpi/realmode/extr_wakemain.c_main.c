
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int real_magic; int realmode_flags; int video_mode; } ;


 int probe_cards (int ) ;
 int send_morse (char*) ;
 int set_mode (int ) ;
 TYPE_1__ wakeup_header ;

void main(void)
{

 if (wakeup_header.real_magic != 0x12345678)
  while (1);

 if (wakeup_header.realmode_flags & 4)
  send_morse("...-");

 if (wakeup_header.realmode_flags & 1)
  asm volatile("lcallw   $0xc000,$3");

 if (wakeup_header.realmode_flags & 2) {

  probe_cards(0);
  set_mode(wakeup_header.video_mode);
 }
}
