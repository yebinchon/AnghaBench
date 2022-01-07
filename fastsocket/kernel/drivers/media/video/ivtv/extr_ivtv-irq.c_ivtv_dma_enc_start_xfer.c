
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ivtv_stream {size_t sg_processed; int sg_handle; TYPE_2__* sg_processing; TYPE_1__* sg_dma; struct ivtv* itv; } ;
struct TYPE_6__ {scalar_t__ expires; } ;
struct ivtv {TYPE_3__ dma_timer; } ;
struct TYPE_5__ {int src; int dst; int size; } ;
struct TYPE_4__ {void* size; void* dst; void* src; } ;


 int IVTV_REG_DMAXFER ;
 int IVTV_REG_ENCDMAADDR ;
 int add_timer (TYPE_3__*) ;
 void* cpu_to_le32 (int) ;
 int ivtv_stream_sync_for_device (struct ivtv_stream*) ;
 scalar_t__ jiffies ;
 scalar_t__ msecs_to_jiffies (int) ;
 int read_reg (int ) ;
 int write_reg (int ,int ) ;
 int write_reg_sync (int,int ) ;

__attribute__((used)) static void ivtv_dma_enc_start_xfer(struct ivtv_stream *s)
{
 struct ivtv *itv = s->itv;

 s->sg_dma->src = cpu_to_le32(s->sg_processing[s->sg_processed].src);
 s->sg_dma->dst = cpu_to_le32(s->sg_processing[s->sg_processed].dst);
 s->sg_dma->size = cpu_to_le32(s->sg_processing[s->sg_processed].size | 0x80000000);
 s->sg_processed++;

 ivtv_stream_sync_for_device(s);
 write_reg(s->sg_handle, IVTV_REG_ENCDMAADDR);
 write_reg_sync(read_reg(IVTV_REG_DMAXFER) | 0x02, IVTV_REG_DMAXFER);
 itv->dma_timer.expires = jiffies + msecs_to_jiffies(300);
 add_timer(&itv->dma_timer);
}
