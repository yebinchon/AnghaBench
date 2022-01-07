
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sts_cont_entry_t ;
struct sts_entry_fx00 {scalar_t__ entry_status; int entry_type; } ;
struct TYPE_4__ {int online; } ;
struct scsi_qla_host {TYPE_1__ flags; } ;
struct rsp_que {scalar_t__ ring_index; scalar_t__ length; int * rsp_q_out; int req; TYPE_2__* ring_ptr; TYPE_2__* ring; scalar_t__ rsp_pkt; } ;
struct ioctl_iocb_entry_fx00 {int dummy; } ;
struct abort_iocb_entry_fx00 {int dummy; } ;
struct TYPE_5__ {int signature; } ;
typedef TYPE_2__ response_t ;





 scalar_t__ RD_REG_DWORD (int *) ;
 scalar_t__ RESPONSE_PROCESSED ;


 int WRT_REG_DWORD (int *,scalar_t__) ;
 int memcpy_fromio (scalar_t__,TYPE_2__*,int) ;
 int ql_dbg (int ,struct scsi_qla_host*,int,char*,int,scalar_t__) ;
 int ql_dbg_async ;
 int qlafx00_abort_iocb_entry (struct scsi_qla_host*,int ,struct abort_iocb_entry_fx00*) ;
 int qlafx00_error_entry (struct scsi_qla_host*,struct rsp_que*,struct sts_entry_fx00*,scalar_t__,int) ;
 int qlafx00_ioctl_iosb_entry (struct scsi_qla_host*,int ,struct ioctl_iocb_entry_fx00*) ;
 int qlafx00_multistatus_entry (struct scsi_qla_host*,struct rsp_que*,struct sts_entry_fx00*) ;
 int qlafx00_status_cont_entry (struct rsp_que*,int *) ;
 int qlafx00_status_entry (struct scsi_qla_host*,struct rsp_que*,struct sts_entry_fx00*) ;
 int wmb () ;

__attribute__((used)) static void
qlafx00_process_response_queue(struct scsi_qla_host *vha,
 struct rsp_que *rsp)
{
 struct sts_entry_fx00 *pkt;
 response_t *lptr;

 if (!vha->flags.online)
  return;

 while (RD_REG_DWORD(&(rsp->ring_ptr->signature)) !=
     RESPONSE_PROCESSED) {
  lptr = rsp->ring_ptr;
  memcpy_fromio(rsp->rsp_pkt, lptr, sizeof(rsp->rsp_pkt));
  pkt = (struct sts_entry_fx00 *)rsp->rsp_pkt;

  rsp->ring_index++;
  if (rsp->ring_index == rsp->length) {
   rsp->ring_index = 0;
   rsp->ring_ptr = rsp->ring;
  } else {
   rsp->ring_ptr++;
  }

  if (pkt->entry_status != 0 &&
      pkt->entry_type != 131) {
   qlafx00_error_entry(vha, rsp,
       (struct sts_entry_fx00 *)pkt, pkt->entry_status,
       pkt->entry_type);
   goto next_iter;
   continue;
  }

  switch (pkt->entry_type) {
  case 128:
   qlafx00_status_entry(vha, rsp, pkt);
   break;

  case 129:
   qlafx00_status_cont_entry(rsp, (sts_cont_entry_t *)pkt);
   break;

  case 130:
   qlafx00_multistatus_entry(vha, rsp, pkt);
   break;

  case 132:
   qlafx00_abort_iocb_entry(vha, rsp->req,
      (struct abort_iocb_entry_fx00 *)pkt);
   break;

  case 131:
   qlafx00_ioctl_iosb_entry(vha, rsp->req,
       (struct ioctl_iocb_entry_fx00 *)pkt);
   break;
  default:

   ql_dbg(ql_dbg_async, vha, 0x5081,
       "Received unknown response pkt type %x "
       "entry status=%x.\n",
       pkt->entry_type, pkt->entry_status);
   break;
  }
next_iter:
  WRT_REG_DWORD(&lptr->signature, RESPONSE_PROCESSED);
  wmb();
 }


 WRT_REG_DWORD(rsp->rsp_q_out, rsp->ring_index);
}
