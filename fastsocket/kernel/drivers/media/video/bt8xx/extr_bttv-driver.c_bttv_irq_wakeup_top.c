
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int done; int state; int field_count; int ts; } ;
struct bttv_buffer {TYPE_1__ vb; } ;
struct TYPE_4__ {struct bttv_buffer* top; scalar_t__ top_irq; } ;
struct bttv {int s_lock; int field_count; TYPE_2__ curr; } ;


 int RISC_SLOT_O_FIELD ;
 int VIDEOBUF_DONE ;
 int bttv_risc_hook (struct bttv*,int ,int *,int ) ;
 int do_gettimeofday (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void
bttv_irq_wakeup_top(struct bttv *btv)
{
 struct bttv_buffer *wakeup = btv->curr.top;

 if (((void*)0) == wakeup)
  return;

 spin_lock(&btv->s_lock);
 btv->curr.top_irq = 0;
 btv->curr.top = ((void*)0);
 bttv_risc_hook(btv, RISC_SLOT_O_FIELD, ((void*)0), 0);

 do_gettimeofday(&wakeup->vb.ts);
 wakeup->vb.field_count = btv->field_count;
 wakeup->vb.state = VIDEOBUF_DONE;
 wake_up(&wakeup->vb.done);
 spin_unlock(&btv->s_lock);
}
