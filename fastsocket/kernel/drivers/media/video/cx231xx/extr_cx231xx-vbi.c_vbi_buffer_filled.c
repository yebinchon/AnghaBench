
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct cx231xx_dmaqueue {int dummy; } ;
struct TYPE_4__ {int done; int queue; int ts; int field_count; int state; } ;
struct cx231xx_buffer {TYPE_1__ vb; } ;
struct TYPE_5__ {int * buf; } ;
struct TYPE_6__ {TYPE_2__ bulk_ctl; } ;
struct cx231xx {TYPE_3__ vbi_mode; } ;


 int VIDEOBUF_DONE ;
 int do_gettimeofday (int *) ;
 int list_del (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static inline void vbi_buffer_filled(struct cx231xx *dev,
         struct cx231xx_dmaqueue *dma_q,
         struct cx231xx_buffer *buf)
{



 buf->vb.state = VIDEOBUF_DONE;
 buf->vb.field_count++;
 do_gettimeofday(&buf->vb.ts);

 dev->vbi_mode.bulk_ctl.buf = ((void*)0);

 list_del(&buf->vb.queue);
 wake_up(&buf->vb.done);
}
