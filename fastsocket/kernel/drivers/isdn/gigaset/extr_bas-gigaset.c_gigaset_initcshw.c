
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct bas_cardstate* bas; } ;
struct cardstate {TYPE_1__ hw; } ;
struct bas_cardstate {int waitqueue; int timer_cmd_in; int timer_atrdy; int timer_ctrl; scalar_t__ basstate; scalar_t__ pending; int lock; scalar_t__ rcvbuf_size; int * rcvbuf; int * urb_cmd_out; int * urb_cmd_in; void* int_in_buf; } ;


 int GFP_KERNEL ;
 int IP_MSGSIZE ;
 int init_timer (int *) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct bas_cardstate*) ;
 void* kmalloc (int,int ) ;
 int pr_err (char*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int gigaset_initcshw(struct cardstate *cs)
{
 struct bas_cardstate *ucs;

 cs->hw.bas = ucs = kmalloc(sizeof *ucs, GFP_KERNEL);
 if (!ucs) {
  pr_err("out of memory\n");
  return 0;
 }
 ucs->int_in_buf = kmalloc(IP_MSGSIZE, GFP_KERNEL);
 if (!ucs->int_in_buf) {
  kfree(ucs);
  pr_err("out of memory\n");
  return 0;
 }

 ucs->urb_cmd_in = ((void*)0);
 ucs->urb_cmd_out = ((void*)0);
 ucs->rcvbuf = ((void*)0);
 ucs->rcvbuf_size = 0;

 spin_lock_init(&ucs->lock);
 ucs->pending = 0;

 ucs->basstate = 0;
 init_timer(&ucs->timer_ctrl);
 init_timer(&ucs->timer_atrdy);
 init_timer(&ucs->timer_cmd_in);
 init_waitqueue_head(&ucs->waitqueue);

 return 1;
}
