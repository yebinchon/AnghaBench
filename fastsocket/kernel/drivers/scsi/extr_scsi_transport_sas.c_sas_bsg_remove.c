
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sas_rphy {struct request_queue* q; } ;
struct request_queue {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {struct request_queue* q; } ;


 int bsg_unregister_queue (struct request_queue*) ;
 TYPE_1__* to_sas_host_attrs (struct Scsi_Host*) ;

__attribute__((used)) static void sas_bsg_remove(struct Scsi_Host *shost, struct sas_rphy *rphy)
{
 struct request_queue *q;

 if (rphy)
  q = rphy->q;
 else
  q = to_sas_host_attrs(shost)->q;

 if (!q)
  return;

 bsg_unregister_queue(q);
}
