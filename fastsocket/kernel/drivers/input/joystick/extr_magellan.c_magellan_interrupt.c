
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dummy; } ;
struct magellan {scalar_t__ idx; unsigned char* data; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ MAGELLAN_MAX_LENGTH ;
 int magellan_process_packet (struct magellan*) ;
 struct magellan* serio_get_drvdata (struct serio*) ;

__attribute__((used)) static irqreturn_t magellan_interrupt(struct serio *serio,
  unsigned char data, unsigned int flags)
{
 struct magellan* magellan = serio_get_drvdata(serio);

 if (data == '\r') {
  magellan_process_packet(magellan);
  magellan->idx = 0;
 } else {
  if (magellan->idx < MAGELLAN_MAX_LENGTH)
   magellan->data[magellan->idx++] = data;
 }
 return IRQ_HANDLED;
}
