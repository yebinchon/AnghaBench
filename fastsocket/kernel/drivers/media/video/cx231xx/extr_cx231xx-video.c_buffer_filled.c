
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct cx231xx_dmaqueue {int dummy; } ;
struct TYPE_8__ {int done; int queue; int ts; int field_count; int state; int i; } ;
struct cx231xx_buffer {TYPE_4__ vb; } ;
struct TYPE_6__ {int * buf; } ;
struct TYPE_5__ {int * buf; } ;
struct TYPE_7__ {TYPE_2__ bulk_ctl; TYPE_1__ isoc_ctl; } ;
struct cx231xx {TYPE_3__ video_mode; scalar_t__ USE_ISO; } ;


 int VIDEOBUF_DONE ;
 int cx231xx_isocdbg (char*,struct cx231xx_buffer*,int ) ;
 int do_gettimeofday (int *) ;
 int list_del (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static inline void buffer_filled(struct cx231xx *dev,
     struct cx231xx_dmaqueue *dma_q,
     struct cx231xx_buffer *buf)
{

 cx231xx_isocdbg("[%p/%d] wakeup\n", buf, buf->vb.i);
 buf->vb.state = VIDEOBUF_DONE;
 buf->vb.field_count++;
 do_gettimeofday(&buf->vb.ts);

 if (dev->USE_ISO)
  dev->video_mode.isoc_ctl.buf = ((void*)0);
 else
  dev->video_mode.bulk_ctl.buf = ((void*)0);

 list_del(&buf->vb.queue);
 wake_up(&buf->vb.done);
}
