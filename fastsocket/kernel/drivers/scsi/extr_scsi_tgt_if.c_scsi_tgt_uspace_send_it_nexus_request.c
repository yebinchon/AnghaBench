
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_4__ {int host_no; int function; int initiator_id; scalar_t__ itn_id; } ;
struct TYPE_3__ {TYPE_2__ it_nexus_req; } ;
struct tgt_event {TYPE_1__ p; } ;
typedef int ev ;


 int TGT_KEVENT_IT_NEXUS_REQ ;
 int dprintk (char*,int,int,unsigned long long) ;
 int eprintk (char*) ;
 int memset (struct tgt_event*,int ,int) ;
 int strncpy (int ,char*,int) ;
 int tgt_uspace_send_event (int ,struct tgt_event*) ;

int scsi_tgt_uspace_send_it_nexus_request(int host_no, u64 itn_id,
       int function, char *initiator_id)
{
 struct tgt_event ev;
 int err;

 memset(&ev, 0, sizeof(ev));
 ev.p.it_nexus_req.host_no = host_no;
 ev.p.it_nexus_req.function = function;
 ev.p.it_nexus_req.itn_id = itn_id;
 if (initiator_id)
  strncpy(ev.p.it_nexus_req.initiator_id, initiator_id,
   sizeof(ev.p.it_nexus_req.initiator_id));

 dprintk("%d %x %llx\n", host_no, function, (unsigned long long)itn_id);

 err = tgt_uspace_send_event(TGT_KEVENT_IT_NEXUS_REQ, &ev);
 if (err)
  eprintk("tx buf is full, could not send\n");

 return err;
}
