
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u64 ;
struct TYPE_3__ {int host_no; int function; void* mid; int lun; void* tag; void* itn_id; } ;
struct TYPE_4__ {TYPE_1__ tsk_mgmt_req; } ;
struct tgt_event {TYPE_2__ p; } ;
struct scsi_lun {int dummy; } ;
typedef int ev ;


 int TGT_KEVENT_TSK_MGMT_REQ ;
 int dprintk (char*,int,int,unsigned long long,unsigned long long) ;
 int eprintk (char*) ;
 int memcpy (int ,struct scsi_lun*,int) ;
 int memset (struct tgt_event*,int ,int) ;
 int tgt_uspace_send_event (int ,struct tgt_event*) ;

int scsi_tgt_uspace_send_tsk_mgmt(int host_no, u64 itn_id, int function,
      u64 tag, struct scsi_lun *scsilun, void *data)
{
 struct tgt_event ev;
 int err;

 memset(&ev, 0, sizeof(ev));
 ev.p.tsk_mgmt_req.host_no = host_no;
 ev.p.tsk_mgmt_req.itn_id = itn_id;
 ev.p.tsk_mgmt_req.function = function;
 ev.p.tsk_mgmt_req.tag = tag;
 memcpy(ev.p.tsk_mgmt_req.lun, scsilun, sizeof(ev.p.tsk_mgmt_req.lun));
 ev.p.tsk_mgmt_req.mid = (u64) (unsigned long) data;

 dprintk("%d %x %llx %llx\n", host_no, function, (unsigned long long) tag,
  (unsigned long long) ev.p.tsk_mgmt_req.mid);

 err = tgt_uspace_send_event(TGT_KEVENT_TSK_MGMT_REQ, &ev);
 if (err)
  eprintk("tx buf is full, could not send\n");

 return err;
}
