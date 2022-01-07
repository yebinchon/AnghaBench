
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fcoe_ctlr_device {int enabled; } ;
struct fcoe_ctlr {int dummy; } ;


 int ENOTSUPP ;



 int __bnx2fc_disable (struct fcoe_ctlr*) ;
 int __bnx2fc_enable (struct fcoe_ctlr*) ;
 struct fcoe_ctlr* fcoe_ctlr_device_priv (struct fcoe_ctlr_device*) ;

__attribute__((used)) static int bnx2fc_ctlr_enabled(struct fcoe_ctlr_device *cdev)
{
 struct fcoe_ctlr *ctlr = fcoe_ctlr_device_priv(cdev);

 switch (cdev->enabled) {
 case 129:
  return __bnx2fc_enable(ctlr);
 case 130:
  return __bnx2fc_disable(ctlr);
 case 128:
 default:
  return -ENOTSUPP;
 };
}
