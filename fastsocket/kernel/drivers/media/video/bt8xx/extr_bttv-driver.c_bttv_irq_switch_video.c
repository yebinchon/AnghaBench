
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bttv_buffer_set {TYPE_2__* bottom; TYPE_1__* top; } ;
struct bttv {int loop_irq; scalar_t__ new_input; int s_lock; struct bttv_buffer_set curr; int framedrop; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {int bottom; } ;
struct TYPE_3__ {int top; } ;


 int BT848_RISC_COUNT ;
 scalar_t__ UNSET ;
 int VIDEOBUF_DONE ;
 int btread (int ) ;
 int bttv_buffer_activate_video (struct bttv*,struct bttv_buffer_set*) ;
 int bttv_irq_debug_low_latency (struct bttv*,int ) ;
 int bttv_irq_next_video (struct bttv*,struct bttv_buffer_set*) ;
 int bttv_irq_wakeup_video (struct bttv*,struct bttv_buffer_set*,struct bttv_buffer_set*,int ) ;
 int bttv_set_dma (struct bttv*,int ) ;
 scalar_t__ debug_latency ;
 scalar_t__ is_active (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int video_mux (struct bttv*,scalar_t__) ;

__attribute__((used)) static void
bttv_irq_switch_video(struct bttv *btv)
{
 struct bttv_buffer_set new;
 struct bttv_buffer_set old;
 dma_addr_t rc;

 spin_lock(&btv->s_lock);


 bttv_irq_next_video(btv, &new);
 rc = btread(BT848_RISC_COUNT);
 if ((btv->curr.top && is_active(&btv->curr.top->top, rc)) ||
     (btv->curr.bottom && is_active(&btv->curr.bottom->bottom, rc))) {
  btv->framedrop++;
  if (debug_latency)
   bttv_irq_debug_low_latency(btv, rc);
  spin_unlock(&btv->s_lock);
  return;
 }


 old = btv->curr;
 btv->curr = new;
 btv->loop_irq &= ~1;
 bttv_buffer_activate_video(btv, &new);
 bttv_set_dma(btv, 0);


 if (UNSET != btv->new_input) {
  video_mux(btv,btv->new_input);
  btv->new_input = UNSET;
 }


 bttv_irq_wakeup_video(btv, &old, &new, VIDEOBUF_DONE);
 spin_unlock(&btv->s_lock);
}
