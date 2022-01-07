
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int tsk_mgmt_func; int lun; int task_tag; } ;
struct TYPE_6__ {TYPE_2__ tsk_mgmt; } ;
union viosrp_iu {TYPE_3__ srp; } ;
struct scsi_lun {int dummy; } ;
struct iu_entry {TYPE_1__* target; } ;
struct TYPE_4__ {scalar_t__ shost; } ;


 int ABORT_TASK ;
 int ABORT_TASK_SET ;
 int CLEAR_ACA ;
 int CLEAR_TASK_SET ;
 int ILLEGAL_REQUEST ;
 int LOGICAL_UNIT_RESET ;





 int dprintk (char*,struct iu_entry*,int) ;
 int scsi_tgt_tsk_mgmt_request (scalar_t__,unsigned long,int,int ,struct scsi_lun*,struct iu_entry*) ;
 int send_rsp (struct iu_entry*,int *,int ,int) ;
 union viosrp_iu* vio_iu (struct iu_entry*) ;

__attribute__((used)) static int process_tsk_mgmt(struct iu_entry *iue)
{
 union viosrp_iu *iu = vio_iu(iue);
 int fn;

 dprintk("%p %u\n", iue, iu->srp.tsk_mgmt.tsk_mgmt_func);

 switch (iu->srp.tsk_mgmt.tsk_mgmt_func) {
 case 132:
  fn = ABORT_TASK;
  break;
 case 131:
  fn = ABORT_TASK_SET;
  break;
 case 129:
  fn = CLEAR_TASK_SET;
  break;
 case 128:
  fn = LOGICAL_UNIT_RESET;
  break;
 case 130:
  fn = CLEAR_ACA;
  break;
 default:
  fn = 0;
 }
 if (fn)
  scsi_tgt_tsk_mgmt_request(iue->target->shost,
       (unsigned long)iue->target->shost,
       fn,
       iu->srp.tsk_mgmt.task_tag,
       (struct scsi_lun *) &iu->srp.tsk_mgmt.lun,
       iue);
 else
  send_rsp(iue, ((void*)0), ILLEGAL_REQUEST, 0x20);

 return !fn;
}
