
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {struct Scsi_Host* queuedata; } ;
struct Scsi_Host {int shost_gendev; } ;


 int fc_bsg_request_handler (struct request_queue*,struct Scsi_Host*,int *,int *) ;

__attribute__((used)) static void
fc_bsg_host_handler(struct request_queue *q)
{
 struct Scsi_Host *shost = q->queuedata;

 fc_bsg_request_handler(q, shost, ((void*)0), &shost->shost_gendev);
}
