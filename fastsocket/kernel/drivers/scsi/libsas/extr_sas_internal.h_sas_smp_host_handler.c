
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct Scsi_Host {int dummy; } ;


 int EINVAL ;
 int KERN_ERR ;
 int shost_printk (int ,struct Scsi_Host*,char*) ;

__attribute__((used)) static inline int sas_smp_host_handler(struct Scsi_Host *shost,
           struct request *req,
           struct request *rsp)
{
 shost_printk(KERN_ERR, shost,
  "Cannot send SMP to a sas host (not enabled in CONFIG)\n");
 return -EINVAL;
}
