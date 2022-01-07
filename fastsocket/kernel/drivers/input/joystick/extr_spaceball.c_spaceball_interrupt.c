
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spaceball {int escape; unsigned char* data; int idx; } ;
struct serio {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int SPACEBALL_MAX_LENGTH ;
 struct spaceball* serio_get_drvdata (struct serio*) ;
 int spaceball_process_packet (struct spaceball*) ;

__attribute__((used)) static irqreturn_t spaceball_interrupt(struct serio *serio,
  unsigned char data, unsigned int flags)
{
 struct spaceball *spaceball = serio_get_drvdata(serio);

 switch (data) {
  case 0xd:
   spaceball_process_packet(spaceball);
   spaceball->idx = 0;
   spaceball->escape = 0;
   break;
  case '^':
   if (!spaceball->escape) {
    spaceball->escape = 1;
    break;
   }
   spaceball->escape = 0;
  case 'M':
  case 'Q':
  case 'S':
   if (spaceball->escape) {
    spaceball->escape = 0;
    data &= 0x1f;
   }
  default:
   if (spaceball->escape)
    spaceball->escape = 0;
   if (spaceball->idx < SPACEBALL_MAX_LENGTH)
    spaceball->data[spaceball->idx++] = data;
   break;
 }
 return IRQ_HANDLED;
}
