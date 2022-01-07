
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxgbi_device {struct cxgbi_ddp_info* ddp; } ;
struct cxgbi_ddp_info {int refcnt; } ;


 int CXGBI_DBG_DDP ;
 int ddp_destroy ;
 int kref_put (int *,int ) ;
 int log_debug (int,char*,struct cxgbi_device*,struct cxgbi_ddp_info*) ;

int cxgbi_ddp_cleanup(struct cxgbi_device *cdev)
{
 struct cxgbi_ddp_info *ddp = cdev->ddp;

 log_debug(1 << CXGBI_DBG_DDP,
  "cdev 0x%p, release ddp 0x%p.\n", cdev, ddp);
 cdev->ddp = ((void*)0);
 if (ddp)
  return kref_put(&ddp->refcnt, ddp_destroy);
 return 0;
}
