
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vnic_rq {TYPE_1__* ctrl; } ;
struct TYPE_2__ {int fetch_index; } ;


 int ioread32 (int *) ;
 int vnic_rq_init_start (struct vnic_rq*,unsigned int,int,int,unsigned int,unsigned int) ;

void vnic_rq_init(struct vnic_rq *rq, unsigned int cq_index,
 unsigned int error_interrupt_enable,
 unsigned int error_interrupt_offset)
{
 u32 fetch_index;


 fetch_index = ioread32(&rq->ctrl->fetch_index);

 if (fetch_index == 0xFFFFFFFF) {

  fetch_index = 0;
 }

 vnic_rq_init_start(rq, cq_index,
  fetch_index, fetch_index,
  error_interrupt_enable,
  error_interrupt_offset);
}
