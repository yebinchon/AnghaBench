
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t3cdev {int * ulp_iscsi; } ;
struct cxgbi_device {scalar_t__ lldev; } ;


 scalar_t__ cxgbi_ddp_cleanup (struct cxgbi_device*) ;
 int pr_info (char*,struct t3cdev*) ;

__attribute__((used)) static void t3_ddp_cleanup(struct cxgbi_device *cdev)
{
 struct t3cdev *tdev = (struct t3cdev *)cdev->lldev;

 if (cxgbi_ddp_cleanup(cdev)) {
  pr_info("t3dev 0x%p, ulp_iscsi no more user.\n", tdev);
  tdev->ulp_iscsi = ((void*)0);
 }
}
