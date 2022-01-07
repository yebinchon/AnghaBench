
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int intr_timer_type; int intr_timer_usec; } ;
struct enic {int intr_count; unsigned int rq_count; unsigned int wq_count; unsigned int cq_count; TYPE_1__ config; int * intr; int * cq; int * wq; int * rq; int vdev; } ;
typedef enum vnic_dev_intr_mode { ____Placeholder_vnic_dev_intr_mode } vnic_dev_intr_mode ;





 int vnic_cq_init (int *,int ,int,int ,int ,int,int,int,int ,unsigned int,int ) ;
 int vnic_dev_get_intr_mode (int ) ;
 int vnic_intr_init (int *,int ,int ,unsigned int) ;
 int vnic_rq_init (int *,unsigned int,unsigned int,unsigned int) ;
 int vnic_wq_init (int *,unsigned int,unsigned int,unsigned int) ;

void enic_init_vnic_resources(struct enic *enic)
{
 enum vnic_dev_intr_mode intr_mode;
 unsigned int mask_on_assertion;
 unsigned int interrupt_offset;
 unsigned int error_interrupt_enable;
 unsigned int error_interrupt_offset;
 unsigned int cq_index;
 unsigned int i;

 intr_mode = vnic_dev_get_intr_mode(enic->vdev);
 switch (intr_mode) {
 case 130:
 case 128:
  error_interrupt_enable = 1;
  error_interrupt_offset = enic->intr_count - 2;
  break;
 default:
  error_interrupt_enable = 0;
  error_interrupt_offset = 0;
  break;
 }

 for (i = 0; i < enic->rq_count; i++) {
  cq_index = i;
  vnic_rq_init(&enic->rq[i],
   cq_index,
   error_interrupt_enable,
   error_interrupt_offset);
 }

 for (i = 0; i < enic->wq_count; i++) {
  cq_index = enic->rq_count + i;
  vnic_wq_init(&enic->wq[i],
   cq_index,
   error_interrupt_enable,
   error_interrupt_offset);
 }







 for (i = 0; i < enic->cq_count; i++) {

  switch (intr_mode) {
  case 128:
   interrupt_offset = i;
   break;
  default:
   interrupt_offset = 0;
   break;
  }

  vnic_cq_init(&enic->cq[i],
   0 ,
   1 ,
   0 ,
   0 ,
   1 ,
   1 ,
   1 ,
   0 ,
   interrupt_offset,
   0 );
 }







 switch (intr_mode) {
 case 129:
 case 128:
  mask_on_assertion = 1;
  break;
 default:
  mask_on_assertion = 0;
  break;
 }

 for (i = 0; i < enic->intr_count; i++) {
  vnic_intr_init(&enic->intr[i],
   enic->config.intr_timer_usec,
   enic->config.intr_timer_type,
   mask_on_assertion);
 }
}
