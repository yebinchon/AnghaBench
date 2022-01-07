
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct scsi_lun {int dummy; } ;
struct Scsi_Host {int host_no; } ;


 int eprintk (char*) ;
 int scsi_tgt_uspace_send_tsk_mgmt (int ,int ,int,int ,struct scsi_lun*,void*) ;

int scsi_tgt_tsk_mgmt_request(struct Scsi_Host *shost, u64 itn_id,
         int function, u64 tag, struct scsi_lun *scsilun,
         void *data)
{
 int err;


 err = scsi_tgt_uspace_send_tsk_mgmt(shost->host_no, itn_id,
         function, tag, scsilun, data);
 if (err < 0)
  eprintk("The task management request lost!\n");
 return err;
}
