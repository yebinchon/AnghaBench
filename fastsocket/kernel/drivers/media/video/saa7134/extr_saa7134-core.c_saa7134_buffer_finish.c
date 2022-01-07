
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct saa7134_dmaqueue {TYPE_2__* curr; } ;
struct saa7134_dev {int slock; } ;
struct TYPE_3__ {unsigned int state; int done; int ts; } ;
struct TYPE_4__ {TYPE_1__ vb; } ;


 int assert_spin_locked (int *) ;
 int do_gettimeofday (int *) ;
 int dprintk (char*,TYPE_2__*) ;
 int wake_up (int *) ;

void saa7134_buffer_finish(struct saa7134_dev *dev,
      struct saa7134_dmaqueue *q,
      unsigned int state)
{
 assert_spin_locked(&dev->slock);
 dprintk("buffer_finish %p\n",q->curr);


 q->curr->vb.state = state;
 do_gettimeofday(&q->curr->vb.ts);
 wake_up(&q->curr->vb.done);
 q->curr = ((void*)0);
}
