
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct scsi_qla_host {int iocb_cnt; struct mrb** active_mrb_array; } ;
struct mrb {scalar_t__ iocb_cnt; } ;


 size_t MAX_MRB ;

__attribute__((used)) static struct mrb *qla4xxx_del_mrb_from_active_array(struct scsi_qla_host *ha,
           uint32_t index)
{
 struct mrb *mrb = ((void*)0);


 if (index >= MAX_MRB)
  return mrb;

 mrb = ha->active_mrb_array[index];
 ha->active_mrb_array[index] = ((void*)0);
 if (!mrb)
  return mrb;


 ha->iocb_cnt -= mrb->iocb_cnt;

 return mrb;
}
