
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {unsigned int desc_count; scalar_t__ base_addr; } ;
struct vnic_wq {TYPE_2__* ctrl; TYPE_1__ ring; } ;
struct TYPE_4__ {int error_status; int error_interrupt_offset; int error_interrupt_enable; int cq_index; int posted_index; int fetch_index; int ring_size; int ring_base; } ;


 int VNIC_PADDR_TARGET ;
 int iowrite32 (unsigned int,int *) ;
 int writeq (int,int *) ;

void vnic_wq_init(struct vnic_wq *wq, unsigned int cq_index,
 unsigned int error_interrupt_enable,
 unsigned int error_interrupt_offset)
{
 u64 paddr;

 paddr = (u64)wq->ring.base_addr | VNIC_PADDR_TARGET;
 writeq(paddr, &wq->ctrl->ring_base);
 iowrite32(wq->ring.desc_count, &wq->ctrl->ring_size);
 iowrite32(0, &wq->ctrl->fetch_index);
 iowrite32(0, &wq->ctrl->posted_index);
 iowrite32(cq_index, &wq->ctrl->cq_index);
 iowrite32(error_interrupt_enable, &wq->ctrl->error_interrupt_enable);
 iowrite32(error_interrupt_offset, &wq->ctrl->error_interrupt_offset);
 iowrite32(0, &wq->ctrl->error_status);
}
