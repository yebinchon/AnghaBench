
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u64 ;
struct TYPE_5__ {int data_len; scalar_t__ tag; } ;
struct TYPE_4__ {int result; void* tag; void* itn_id; int host_no; } ;
struct TYPE_6__ {TYPE_2__ cmd_req; TYPE_1__ cmd_done; } ;
struct tgt_event {TYPE_3__ p; } ;
struct scsi_cmnd {int tag; int result; } ;
struct Scsi_Host {int host_no; } ;
typedef int ev ;


 int TGT_KEVENT_CMD_DONE ;
 int dprintk (char*,struct scsi_cmnd*,int ,unsigned long long,int ,int ) ;
 int eprintk (char*) ;
 int memset (struct tgt_event*,int ,int) ;
 struct Scsi_Host* scsi_tgt_cmd_to_host (struct scsi_cmnd*) ;
 int tgt_uspace_send_event (int ,struct tgt_event*) ;

int scsi_tgt_uspace_send_status(struct scsi_cmnd *cmd, u64 itn_id, u64 tag)
{
 struct Scsi_Host *shost = scsi_tgt_cmd_to_host(cmd);
 struct tgt_event ev;
 int err;

 memset(&ev, 0, sizeof(ev));
 ev.p.cmd_done.host_no = shost->host_no;
 ev.p.cmd_done.itn_id = itn_id;
 ev.p.cmd_done.tag = tag;
 ev.p.cmd_done.result = cmd->result;

 dprintk("%p %d %llu %u %x\n", cmd, shost->host_no,
  (unsigned long long) ev.p.cmd_req.tag,
  ev.p.cmd_req.data_len, cmd->tag);

 err = tgt_uspace_send_event(TGT_KEVENT_CMD_DONE, &ev);
 if (err)
  eprintk("tx buf is full, could not send\n");

 return err;
}
