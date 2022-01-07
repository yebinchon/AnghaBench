
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct iscsi_internal {TYPE_1__* iscsi_transport; } ;
struct iscsi_cls_host {struct request_queue* bsg_q; } ;
struct device {int dummy; } ;
struct Scsi_Host {int host_no; int transportt; struct device shost_gendev; } ;
typedef int bsg_name ;
struct TYPE_2__ {int bsg_request; } ;


 int ENOMEM ;
 int ENOTSUPP ;
 int KERN_ERR ;
 struct request_queue* __scsi_alloc_queue (struct Scsi_Host*,int ) ;
 int blk_cleanup_queue (struct request_queue*) ;
 int bsg_setup_queue (struct device*,struct request_queue*,char*) ;
 int iscsi_bsg_request_fn ;
 int shost_printk (int ,struct Scsi_Host*,char*) ;
 int snprintf (char*,int,char*,int) ;
 struct iscsi_internal* to_iscsi_internal (int ) ;

__attribute__((used)) static int
iscsi_bsg_host_add(struct Scsi_Host *shost, struct iscsi_cls_host *ihost)
{
 struct device *dev = &shost->shost_gendev;
 struct iscsi_internal *i = to_iscsi_internal(shost->transportt);
 struct request_queue *q;
 char bsg_name[20];
 int ret;

 if (!i->iscsi_transport->bsg_request)
  return -ENOTSUPP;

 snprintf(bsg_name, sizeof(bsg_name), "iscsi_host%d", shost->host_no);

 q = __scsi_alloc_queue(shost, iscsi_bsg_request_fn);
 if (!q)
  return -ENOMEM;

 ret = bsg_setup_queue(dev, q, bsg_name);
 if (ret) {
  shost_printk(KERN_ERR, shost, "bsg interface failed to "
        "initialize - no request queue\n");
  blk_cleanup_queue(q);
  return ret;
 }

 ihost->bsg_q = q;
 return 0;
}
