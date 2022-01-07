
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zhenhua {scalar_t__ idx; int * data; } ;
struct serio {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ ZHENHUA_MAX_LENGTH ;
 struct zhenhua* serio_get_drvdata (struct serio*) ;
 int zhenhua_bitreverse (unsigned char) ;
 int zhenhua_process_packet (struct zhenhua*) ;

__attribute__((used)) static irqreturn_t zhenhua_interrupt(struct serio *serio, unsigned char data, unsigned int flags)
{
 struct zhenhua *zhenhua = serio_get_drvdata(serio);





 if (data == 0xef)
  zhenhua->idx = 0;
 else if (zhenhua->idx == 0)
  return IRQ_HANDLED;

 if (zhenhua->idx < ZHENHUA_MAX_LENGTH)
  zhenhua->data[zhenhua->idx++] = zhenhua_bitreverse(data);

 if (zhenhua->idx == ZHENHUA_MAX_LENGTH) {
  zhenhua_process_packet(zhenhua);
  zhenhua->idx = 0;
 }

 return IRQ_HANDLED;
}
