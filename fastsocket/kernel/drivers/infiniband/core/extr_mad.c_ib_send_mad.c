
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct ib_sge {int length; void* addr; } ;
struct ib_send_wr {int dummy; } ;
struct TYPE_8__ {int list; TYPE_4__* mad_queue; } ;
struct TYPE_10__ {unsigned long wr_id; } ;
struct TYPE_7__ {int mad; struct ib_mad_agent* mad_agent; } ;
struct ib_mad_send_wr_private {void* payload_mapping; void* header_mapping; TYPE_3__ mad_list; TYPE_5__ send_wr; TYPE_2__ send_buf; struct ib_sge* sg_list; TYPE_1__* mad_agent_priv; } ;
struct TYPE_9__ {scalar_t__ count; scalar_t__ max_active; int lock; struct list_head list; } ;
struct ib_mad_qp_info {TYPE_4__ send_queue; struct list_head overflow_list; } ;
struct ib_mad_agent {int device; int qp; } ;
struct TYPE_6__ {struct ib_mad_qp_info* qp_info; } ;


 int DMA_TO_DEVICE ;
 void* ib_dma_map_single (int ,int ,int ,int ) ;
 int ib_dma_unmap_single (int ,void*,int ,int ) ;
 int ib_get_payload (struct ib_mad_send_wr_private*) ;
 int ib_post_send (int ,TYPE_5__*,struct ib_send_wr**) ;
 int list_add_tail (int *,struct list_head*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ib_send_mad(struct ib_mad_send_wr_private *mad_send_wr)
{
 struct ib_mad_qp_info *qp_info;
 struct list_head *list;
 struct ib_send_wr *bad_send_wr;
 struct ib_mad_agent *mad_agent;
 struct ib_sge *sge;
 unsigned long flags;
 int ret;


 qp_info = mad_send_wr->mad_agent_priv->qp_info;
 mad_send_wr->send_wr.wr_id = (unsigned long)&mad_send_wr->mad_list;
 mad_send_wr->mad_list.mad_queue = &qp_info->send_queue;

 mad_agent = mad_send_wr->send_buf.mad_agent;
 sge = mad_send_wr->sg_list;
 sge[0].addr = ib_dma_map_single(mad_agent->device,
     mad_send_wr->send_buf.mad,
     sge[0].length,
     DMA_TO_DEVICE);
 mad_send_wr->header_mapping = sge[0].addr;

 sge[1].addr = ib_dma_map_single(mad_agent->device,
     ib_get_payload(mad_send_wr),
     sge[1].length,
     DMA_TO_DEVICE);
 mad_send_wr->payload_mapping = sge[1].addr;

 spin_lock_irqsave(&qp_info->send_queue.lock, flags);
 if (qp_info->send_queue.count < qp_info->send_queue.max_active) {
  ret = ib_post_send(mad_agent->qp, &mad_send_wr->send_wr,
       &bad_send_wr);
  list = &qp_info->send_queue.list;
 } else {
  ret = 0;
  list = &qp_info->overflow_list;
 }

 if (!ret) {
  qp_info->send_queue.count++;
  list_add_tail(&mad_send_wr->mad_list.list, list);
 }
 spin_unlock_irqrestore(&qp_info->send_queue.lock, flags);
 if (ret) {
  ib_dma_unmap_single(mad_agent->device,
        mad_send_wr->header_mapping,
        sge[0].length, DMA_TO_DEVICE);
  ib_dma_unmap_single(mad_agent->device,
        mad_send_wr->payload_mapping,
        sge[1].length, DMA_TO_DEVICE);
 }
 return ret;
}
