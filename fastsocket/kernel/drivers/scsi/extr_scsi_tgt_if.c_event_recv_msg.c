
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int type; } ;
struct TYPE_8__ {int result; int itn_id; int host_no; } ;
struct TYPE_7__ {int result; int mid; int itn_id; int host_no; } ;
struct TYPE_6__ {int rw; int sense_len; int sense_uaddr; int len; int uaddr; int tag; int result; int itn_id; int host_no; } ;
struct TYPE_9__ {TYPE_3__ it_nexus_rsp; TYPE_2__ tsk_mgmt_rsp; TYPE_1__ cmd_rsp; } ;
struct tgt_event {TYPE_5__ hdr; TYPE_4__ p; } ;


 int EINVAL ;



 int eprintk (char*,int) ;
 int scsi_tgt_kspace_exec (int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int scsi_tgt_kspace_it_nexus_rsp (int ,int ,int ) ;
 int scsi_tgt_kspace_tsk_mgmt (int ,int ,int ,int ) ;

__attribute__((used)) static int event_recv_msg(struct tgt_event *ev)
{
 int err = 0;

 switch (ev->hdr.type) {
 case 130:
  err = scsi_tgt_kspace_exec(ev->p.cmd_rsp.host_no,
        ev->p.cmd_rsp.itn_id,
        ev->p.cmd_rsp.result,
        ev->p.cmd_rsp.tag,
        ev->p.cmd_rsp.uaddr,
        ev->p.cmd_rsp.len,
        ev->p.cmd_rsp.sense_uaddr,
        ev->p.cmd_rsp.sense_len,
        ev->p.cmd_rsp.rw);
  break;
 case 128:
  err = scsi_tgt_kspace_tsk_mgmt(ev->p.tsk_mgmt_rsp.host_no,
            ev->p.tsk_mgmt_rsp.itn_id,
            ev->p.tsk_mgmt_rsp.mid,
            ev->p.tsk_mgmt_rsp.result);
  break;
 case 129:
  err = scsi_tgt_kspace_it_nexus_rsp(ev->p.it_nexus_rsp.host_no,
         ev->p.it_nexus_rsp.itn_id,
         ev->p.it_nexus_rsp.result);
  break;
 default:
  eprintk("unknown type %d\n", ev->hdr.type);
  err = -EINVAL;
 }

 return err;
}
