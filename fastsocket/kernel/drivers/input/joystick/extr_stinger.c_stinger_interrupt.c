
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stinger {int idx; unsigned char* data; } ;
struct serio {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int STINGER_MAX_LENGTH ;
 struct stinger* serio_get_drvdata (struct serio*) ;
 int stinger_process_packet (struct stinger*) ;

__attribute__((used)) static irqreturn_t stinger_interrupt(struct serio *serio,
 unsigned char data, unsigned int flags)
{
 struct stinger *stinger = serio_get_drvdata(serio);



 if (stinger->idx < STINGER_MAX_LENGTH)
  stinger->data[stinger->idx++] = data;

 if (stinger->idx == 4) {
  stinger_process_packet(stinger);
  stinger->idx = 0;
 }

 return IRQ_HANDLED;
}
