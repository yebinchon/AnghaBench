
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ilo_hwinfo {int fifo_lock; } ;
struct fifo {int* fifobar; size_t head; size_t imask; } ;


 int ENTRY_MASK ;
 int ENTRY_MASK_C ;
 int ENTRY_MASK_NOSTATE ;
 struct fifo* FIFOBARTOHANDLE (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int fifo_dequeue(struct ilo_hwinfo *hw, char *fifobar, int *entry)
{
 struct fifo *fifo_q = FIFOBARTOHANDLE(fifobar);
 unsigned long flags;
 int ret = 0;
 u64 c;

 spin_lock_irqsave(&hw->fifo_lock, flags);
 c = fifo_q->fifobar[fifo_q->head & fifo_q->imask];
 if (c & ENTRY_MASK_C) {
  if (entry)
   *entry = c & ENTRY_MASK_NOSTATE;

  fifo_q->fifobar[fifo_q->head & fifo_q->imask] =
       (c | ENTRY_MASK) + 1;
  fifo_q->head += 1;
  ret = 1;
 }
 spin_unlock_irqrestore(&hw->fifo_lock, flags);

 return ret;
}
