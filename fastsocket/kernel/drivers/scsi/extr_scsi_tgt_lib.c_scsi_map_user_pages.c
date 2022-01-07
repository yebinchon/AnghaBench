
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_tgt_cmd {int bio; } ;
struct TYPE_2__ {int length; } ;
struct scsi_cmnd {TYPE_1__ sdb; struct request* request; } ;
struct request_queue {int dummy; } ;
struct request {int bio; struct request_queue* q; } ;


 int GFP_KERNEL ;
 int blk_rq_bytes (struct request*) ;
 int blk_rq_map_user (struct request_queue*,struct request*,int *,void*,unsigned int,int ) ;
 int dprintk (char*,unsigned long,unsigned int) ;
 int eprintk (char*,unsigned int) ;
 int scsi_init_io (struct scsi_cmnd*,int ) ;
 int scsi_release_buffers (struct scsi_cmnd*) ;
 int scsi_unmap_user_pages (struct scsi_tgt_cmd*) ;

__attribute__((used)) static int scsi_map_user_pages(struct scsi_tgt_cmd *tcmd, struct scsi_cmnd *cmd,
          unsigned long uaddr, unsigned int len, int rw)
{
 struct request_queue *q = cmd->request->q;
 struct request *rq = cmd->request;
 int err;

 dprintk("%lx %u\n", uaddr, len);
 err = blk_rq_map_user(q, rq, ((void*)0), (void *)uaddr, len, GFP_KERNEL);
 if (err) {
  eprintk("Could not handle request of size %u.\n", len);
  return err;
 }

 tcmd->bio = rq->bio;
 err = scsi_init_io(cmd, GFP_KERNEL);
 if (err) {
  scsi_release_buffers(cmd);
  goto unmap_rq;
 }




 cmd->sdb.length = blk_rq_bytes(rq);

 return 0;

unmap_rq:
 scsi_unmap_user_pages(tcmd);
 return err;
}
