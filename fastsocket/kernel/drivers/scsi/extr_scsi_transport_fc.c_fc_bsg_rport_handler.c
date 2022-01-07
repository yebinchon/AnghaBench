
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {struct fc_rport* queuedata; } ;
struct fc_rport {int dev; } ;
struct Scsi_Host {int dummy; } ;


 int fc_bsg_request_handler (struct request_queue*,struct Scsi_Host*,struct fc_rport*,int *) ;
 struct Scsi_Host* rport_to_shost (struct fc_rport*) ;

__attribute__((used)) static void
fc_bsg_rport_handler(struct request_queue *q)
{
 struct fc_rport *rport = q->queuedata;
 struct Scsi_Host *shost = rport_to_shost(rport);

 fc_bsg_request_handler(q, shost, rport, &rport->dev);
}
