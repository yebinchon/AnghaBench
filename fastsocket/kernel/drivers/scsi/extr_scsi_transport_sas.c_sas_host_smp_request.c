
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {scalar_t__ queuedata; } ;
struct Scsi_Host {int dummy; } ;


 int sas_smp_request (struct request_queue*,struct Scsi_Host*,int *) ;

__attribute__((used)) static void sas_host_smp_request(struct request_queue *q)
{
 sas_smp_request(q, (struct Scsi_Host *)q->queuedata, ((void*)0));
}
