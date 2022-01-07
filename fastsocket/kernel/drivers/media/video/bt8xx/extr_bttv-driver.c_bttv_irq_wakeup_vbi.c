
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {int dummy; } ;
struct TYPE_2__ {unsigned int state; int done; int field_count; struct timeval ts; } ;
struct bttv_buffer {TYPE_1__ vb; } ;
struct bttv {int field_count; } ;


 int do_gettimeofday (struct timeval*) ;
 int wake_up (int *) ;

__attribute__((used)) static void
bttv_irq_wakeup_vbi(struct bttv *btv, struct bttv_buffer *wakeup,
      unsigned int state)
{
 struct timeval ts;

 if (((void*)0) == wakeup)
  return;

 do_gettimeofday(&ts);
 wakeup->vb.ts = ts;
 wakeup->vb.field_count = btv->field_count;
 wakeup->vb.state = state;
 wake_up(&wakeup->vb.done);
}
