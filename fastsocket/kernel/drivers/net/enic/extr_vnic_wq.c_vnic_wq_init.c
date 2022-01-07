
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnic_wq {int dummy; } ;


 int vnic_wq_init_start (struct vnic_wq*,unsigned int,int ,int ,unsigned int,unsigned int) ;

void vnic_wq_init(struct vnic_wq *wq, unsigned int cq_index,
 unsigned int error_interrupt_enable,
 unsigned int error_interrupt_offset)
{
 vnic_wq_init_start(wq, cq_index, 0, 0,
  error_interrupt_enable,
  error_interrupt_offset);
}
