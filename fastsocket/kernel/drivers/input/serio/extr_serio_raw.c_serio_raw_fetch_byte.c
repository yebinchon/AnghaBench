
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serio_raw {size_t head; size_t tail; char* queue; TYPE_1__* serio; } ;
struct TYPE_2__ {int lock; } ;


 int SERIO_RAW_QUEUE_LEN ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int serio_raw_fetch_byte(struct serio_raw *serio_raw, char *c)
{
 unsigned long flags;
 int empty;

 spin_lock_irqsave(&serio_raw->serio->lock, flags);

 empty = serio_raw->head == serio_raw->tail;
 if (!empty) {
  *c = serio_raw->queue[serio_raw->tail];
  serio_raw->tail = (serio_raw->tail + 1) % SERIO_RAW_QUEUE_LEN;
 }

 spin_unlock_irqrestore(&serio_raw->serio->lock, flags);

 return !empty;
}
