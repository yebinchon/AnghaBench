
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {unsigned int errors; } ;


 int EIO ;
 int __blk_end_request_all (struct request*,int) ;

__attribute__((used)) static void ub_end_rq(struct request *rq, unsigned int scsi_status)
{
 int error;

 if (scsi_status == 0) {
  error = 0;
 } else {
  error = -EIO;
  rq->errors = scsi_status;
 }
 __blk_end_request_all(rq, error);
}
