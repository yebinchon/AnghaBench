
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u64 ;
struct TYPE_3__ {void* tag; int data_len; int attribute; int lun; int scb; void* itn_id; int host_no; } ;
struct TYPE_4__ {TYPE_1__ cmd_req; } ;
struct tgt_event {TYPE_2__ p; } ;
struct scsi_lun {int dummy; } ;
struct scsi_cmnd {int tag; struct scsi_lun* cmnd; } ;
struct Scsi_Host {int host_no; } ;
typedef int ev ;


 int TGT_KEVENT_CMD_REQ ;
 int dprintk (char*,struct scsi_cmnd*,int ,int ,int ,unsigned long long) ;
 int eprintk (char*) ;
 int memcpy (int ,struct scsi_lun*,int) ;
 int memset (struct tgt_event*,int ,int) ;
 int scsi_bufflen (struct scsi_cmnd*) ;
 struct Scsi_Host* scsi_tgt_cmd_to_host (struct scsi_cmnd*) ;
 int tgt_uspace_send_event (int ,struct tgt_event*) ;

int scsi_tgt_uspace_send_cmd(struct scsi_cmnd *cmd, u64 itn_id,
        struct scsi_lun *lun, u64 tag)
{
 struct Scsi_Host *shost = scsi_tgt_cmd_to_host(cmd);
 struct tgt_event ev;
 int err;

 memset(&ev, 0, sizeof(ev));
 ev.p.cmd_req.host_no = shost->host_no;
 ev.p.cmd_req.itn_id = itn_id;
 ev.p.cmd_req.data_len = scsi_bufflen(cmd);
 memcpy(ev.p.cmd_req.scb, cmd->cmnd, sizeof(ev.p.cmd_req.scb));
 memcpy(ev.p.cmd_req.lun, lun, sizeof(ev.p.cmd_req.lun));
 ev.p.cmd_req.attribute = cmd->tag;
 ev.p.cmd_req.tag = tag;

 dprintk("%p %d %u %x %llx\n", cmd, shost->host_no,
  ev.p.cmd_req.data_len, cmd->tag,
  (unsigned long long) ev.p.cmd_req.tag);

 err = tgt_uspace_send_event(TGT_KEVENT_CMD_REQ, &ev);
 if (err)
  eprintk("tx buf is full, could not send\n");

 return err;
}
