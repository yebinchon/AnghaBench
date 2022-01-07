
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct taos_data {int state; unsigned char* buffer; size_t pos; } ;
struct serio {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int TAOS_BUFFER_SIZE ;

 void* TAOS_STATE_IDLE ;


 struct taos_data* serio_get_drvdata (struct serio*) ;
 int wake_up_interruptible (int *) ;
 int wq ;

__attribute__((used)) static irqreturn_t taos_interrupt(struct serio *serio, unsigned char data,
      unsigned int flags)
{
 struct taos_data *taos = serio_get_drvdata(serio);

 switch (taos->state) {
 case 129:
  taos->buffer[taos->pos++] = data;
  if (data == ':'
   || taos->pos == TAOS_BUFFER_SIZE - 1) {
   taos->buffer[taos->pos] = '\0';
   taos->state = TAOS_STATE_IDLE;
   wake_up_interruptible(&wq);
  }
  break;
 case 130:
  taos->state = TAOS_STATE_IDLE;
  wake_up_interruptible(&wq);
  break;
 case 128:
  taos->buffer[taos->pos++] = data;
  if (data == ']') {
   taos->buffer[taos->pos] = '\0';
   taos->state = TAOS_STATE_IDLE;
   wake_up_interruptible(&wq);
  }
  break;
 }

 return IRQ_HANDLED;
}
