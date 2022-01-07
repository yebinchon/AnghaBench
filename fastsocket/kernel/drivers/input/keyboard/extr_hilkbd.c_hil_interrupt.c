
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int irqreturn_t ;
struct TYPE_2__ {unsigned char s; unsigned char c; int valid; } ;


 int IRQ_HANDLED ;
 int handle_data (unsigned char,unsigned char) ;
 int handle_status (unsigned char,unsigned char) ;
 TYPE_1__ hil_dev ;
 unsigned char hil_read_data () ;
 unsigned char hil_status () ;
 int mb () ;

__attribute__((used)) static irqreturn_t hil_interrupt(int irq, void *handle)
{
 unsigned char s, c;

 s = hil_status();
 c = hil_read_data();

 switch (s >> 4) {
 case 0x5:
  handle_status(s, c);
  break;
 case 0x6:
  handle_data(s, c);
  break;
 case 0x4:
  hil_dev.s = s;
  hil_dev.c = c;
  mb();
  hil_dev.valid = 1;
  break;
 }
 return IRQ_HANDLED;
}
