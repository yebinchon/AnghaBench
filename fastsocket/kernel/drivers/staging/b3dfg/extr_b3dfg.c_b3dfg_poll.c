
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {struct b3dfg_dev* private_data; } ;
struct b3dfg_dev {int transmission_enabled; int buffer_lock; TYPE_1__* buffers; int buffer_waitqueue; } ;
typedef int poll_table ;
struct TYPE_2__ {scalar_t__ state; } ;


 scalar_t__ B3DFG_BUFFER_POPULATED ;
 int POLLERR ;
 int POLLIN ;
 int POLLRDNORM ;
 int b3dfg_nbuf ;
 unsigned long get_cstate_change (struct b3dfg_dev*) ;
 int poll_wait (struct file*,int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned int b3dfg_poll(struct file *filp, poll_table *poll_table)
{
 struct b3dfg_dev *fgdev = filp->private_data;
 unsigned long flags, when;
 int i;
 int r = 0;

 when = get_cstate_change(fgdev);
 poll_wait(filp, &fgdev->buffer_waitqueue, poll_table);

 spin_lock_irqsave(&fgdev->buffer_lock, flags);
 for (i = 0; i < b3dfg_nbuf; i++) {
  if (fgdev->buffers[i].state == B3DFG_BUFFER_POPULATED) {
   r = POLLIN | POLLRDNORM;
   break;
  }
 }
 spin_unlock_irqrestore(&fgdev->buffer_lock, flags);


 if (!fgdev->transmission_enabled || when != get_cstate_change(fgdev))
  r = POLLERR;

 return r;
}
