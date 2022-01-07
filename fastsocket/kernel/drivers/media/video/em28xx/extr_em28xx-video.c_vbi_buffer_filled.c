
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct em28xx_dmaqueue {int dummy; } ;
struct TYPE_4__ {int done; int queue; int ts; int field_count; int state; int i; } ;
struct em28xx_buffer {TYPE_2__ vb; } ;
struct TYPE_3__ {int * vbi_buf; } ;
struct em28xx {TYPE_1__ isoc_ctl; } ;


 int VIDEOBUF_DONE ;
 int do_gettimeofday (int *) ;
 int em28xx_isocdbg (char*,struct em28xx_buffer*,int ) ;
 int list_del (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static inline void vbi_buffer_filled(struct em28xx *dev,
         struct em28xx_dmaqueue *dma_q,
         struct em28xx_buffer *buf)
{

 em28xx_isocdbg("[%p/%d] wakeup\n", buf, buf->vb.i);

 buf->vb.state = VIDEOBUF_DONE;
 buf->vb.field_count++;
 do_gettimeofday(&buf->vb.ts);

 dev->isoc_ctl.vbi_buf = ((void*)0);

 list_del(&buf->vb.queue);
 wake_up(&buf->vb.done);
}
