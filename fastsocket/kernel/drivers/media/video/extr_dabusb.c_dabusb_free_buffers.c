
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pdabusb_t ;
struct TYPE_3__ {scalar_t__ got_mem; int lock; int rec_buff_list; int free_buff_list; } ;


 int dabusb_free_queue (int *) ;
 int dbg (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int dabusb_free_buffers (pdabusb_t s)
{
 unsigned long flags;
 dbg("dabusb_free_buffers");

 spin_lock_irqsave(&s->lock, flags);

 dabusb_free_queue (&s->free_buff_list);
 dabusb_free_queue (&s->rec_buff_list);

 spin_unlock_irqrestore(&s->lock, flags);

 s->got_mem = 0;
 return 0;
}
