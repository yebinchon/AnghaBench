
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct Scsi_Host {int host_no; } ;


 int eprintk (char*,int ,unsigned long long) ;
 int scsi_tgt_uspace_send_it_nexus_request (int ,scalar_t__,int,int *) ;

int scsi_tgt_it_nexus_destroy(struct Scsi_Host *shost, u64 itn_id)
{
 int err;


 err = scsi_tgt_uspace_send_it_nexus_request(shost->host_no,
          itn_id, 1, ((void*)0));
 if (err < 0)
  eprintk("The i_t_neuxs request lost, %d %llx!\n",
   shost->host_no, (unsigned long long)itn_id);
 return err;
}
