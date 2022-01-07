
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_host_attrs {struct request_queue* q; } ;
struct request_queue {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;


 int blk_cleanup_queue (struct request_queue*) ;
 struct Scsi_Host* dev_to_shost (struct device*) ;
 struct sas_host_attrs* to_sas_host_attrs (struct Scsi_Host*) ;

__attribute__((used)) static void sas_host_release(struct device *dev)
{
 struct Scsi_Host *shost = dev_to_shost(dev);
 struct sas_host_attrs *sas_host = to_sas_host_attrs(shost);
 struct request_queue *q = sas_host->q;

 if (q)
  blk_cleanup_queue(q);
}
