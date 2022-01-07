
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {struct hvcs_struct* driver_data; } ;
struct hvcs_struct {int open_count; int kref; int lock; TYPE_2__* vdev; scalar_t__ chars_in_buffer; int * buffer; TYPE_1__* tty; scalar_t__ todo_mask; } ;
struct TYPE_4__ {int irq; } ;
struct TYPE_3__ {int * driver_data; } ;


 int HVCS_BUFF_LEN ;
 int NO_IRQ ;
 int destroy_hvcs_struct ;
 int free_irq (int,struct hvcs_struct*) ;
 int kref_put (int *,int ) ;
 int memset (int *,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vio_disable_interrupts (TYPE_2__*) ;

__attribute__((used)) static void hvcs_hangup(struct tty_struct * tty)
{
 struct hvcs_struct *hvcsd = tty->driver_data;
 unsigned long flags;
 int temp_open_count;
 int irq = NO_IRQ;

 spin_lock_irqsave(&hvcsd->lock, flags);

 temp_open_count = hvcsd->open_count;






 vio_disable_interrupts(hvcsd->vdev);

 hvcsd->todo_mask = 0;


 hvcsd->tty->driver_data = ((void*)0);
 hvcsd->tty = ((void*)0);

 hvcsd->open_count = 0;



 memset(&hvcsd->buffer[0], 0x00, HVCS_BUFF_LEN);
 hvcsd->chars_in_buffer = 0;

 irq = hvcsd->vdev->irq;

 spin_unlock_irqrestore(&hvcsd->lock, flags);

 free_irq(irq, hvcsd);






 while(temp_open_count) {
  --temp_open_count;





  kref_put(&hvcsd->kref, destroy_hvcs_struct);
 }
}
