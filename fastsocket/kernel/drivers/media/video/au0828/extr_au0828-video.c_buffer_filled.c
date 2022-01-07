
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct au0828_dmaqueue {int dummy; } ;
struct TYPE_3__ {int * buf; } ;
struct au0828_dev {TYPE_1__ isoc_ctl; } ;
struct TYPE_4__ {int done; int queue; int ts; int field_count; int state; int i; } ;
struct au0828_buffer {TYPE_2__ vb; } ;


 int VIDEOBUF_DONE ;
 int au0828_isocdbg (char*,struct au0828_buffer*,int ) ;
 int do_gettimeofday (int *) ;
 int list_del (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static inline void buffer_filled(struct au0828_dev *dev,
      struct au0828_dmaqueue *dma_q,
      struct au0828_buffer *buf)
{

 au0828_isocdbg("[%p/%d] wakeup\n", buf, buf->vb.i);

 buf->vb.state = VIDEOBUF_DONE;
 buf->vb.field_count++;
 do_gettimeofday(&buf->vb.ts);

 dev->isoc_ctl.buf = ((void*)0);

 list_del(&buf->vb.queue);
 wake_up(&buf->vb.done);
}
