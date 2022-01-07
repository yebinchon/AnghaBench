
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {struct hvc_struct* driver_data; } ;
struct hvc_struct {int count; int kref; int data; TYPE_1__* ops; int lock; int * tty; scalar_t__ n_outbuf; int tty_resize; } ;
struct TYPE_2__ {int (* notifier_hangup ) (struct hvc_struct*,int ) ;} ;


 int cancel_work_sync (int *) ;
 int destroy_hvc_struct ;
 int kref_put (int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct hvc_struct*,int ) ;
 int tty_kref_put (struct tty_struct*) ;

__attribute__((used)) static void hvc_hangup(struct tty_struct *tty)
{
 struct hvc_struct *hp = tty->driver_data;
 unsigned long flags;
 int temp_open_count;

 if (!hp)
  return;


 cancel_work_sync(&hp->tty_resize);

 spin_lock_irqsave(&hp->lock, flags);






 if (hp->count <= 0) {
  spin_unlock_irqrestore(&hp->lock, flags);
  return;
 }

 temp_open_count = hp->count;
 hp->count = 0;
 hp->n_outbuf = 0;
 hp->tty = ((void*)0);

 spin_unlock_irqrestore(&hp->lock, flags);

 if (hp->ops->notifier_hangup)
  hp->ops->notifier_hangup(hp, hp->data);

 while(temp_open_count) {
  --temp_open_count;
  tty_kref_put(tty);
  kref_put(&hp->kref, destroy_hvc_struct);
 }
}
