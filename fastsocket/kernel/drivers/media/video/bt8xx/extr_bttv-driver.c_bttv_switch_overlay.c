
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bttv_fh {int cap; } ;
struct TYPE_2__ {int state; } ;
struct bttv_buffer {TYPE_1__ vb; } ;
struct bttv {int loop_irq; int s_lock; struct bttv_buffer* screen; } ;


 int RESOURCE_OVERLAY ;
 int VIDEOBUF_DONE ;
 int bttv_dma_free (int *,struct bttv*,struct bttv_buffer*) ;
 int bttv_set_dma (struct bttv*,int) ;
 int dprintk (char*,...) ;
 int free_btres_lock (struct bttv*,struct bttv_fh*,int ) ;
 int kfree (struct bttv_buffer*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
bttv_switch_overlay(struct bttv *btv, struct bttv_fh *fh,
      struct bttv_buffer *new)
{
 struct bttv_buffer *old;
 unsigned long flags;
 int retval = 0;

 dprintk("switch_overlay: enter [new=%p]\n",new);
 if (new)
  new->vb.state = VIDEOBUF_DONE;
 spin_lock_irqsave(&btv->s_lock,flags);
 old = btv->screen;
 btv->screen = new;
 btv->loop_irq |= 1;
 bttv_set_dma(btv, 0x03);
 spin_unlock_irqrestore(&btv->s_lock,flags);
 if (((void*)0) != old) {
  dprintk("switch_overlay: old=%p state is %d\n",old,old->vb.state);
  bttv_dma_free(&fh->cap,btv, old);
  kfree(old);
 }
 if (((void*)0) == new)
  free_btres_lock(btv,fh,RESOURCE_OVERLAY);
 dprintk("switch_overlay: done\n");
 return retval;
}
