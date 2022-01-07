
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsxxxaa {int dummy; } ;
struct serio {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 struct vsxxxaa* serio_get_drvdata (struct serio*) ;
 int vsxxxaa_parse_buffer (struct vsxxxaa*) ;
 int vsxxxaa_queue_byte (struct vsxxxaa*,unsigned char) ;

__attribute__((used)) static irqreturn_t
vsxxxaa_interrupt (struct serio *serio, unsigned char data, unsigned int flags)
{
 struct vsxxxaa *mouse = serio_get_drvdata (serio);

 vsxxxaa_queue_byte (mouse, data);
 vsxxxaa_parse_buffer (mouse);

 return IRQ_HANDLED;
}
