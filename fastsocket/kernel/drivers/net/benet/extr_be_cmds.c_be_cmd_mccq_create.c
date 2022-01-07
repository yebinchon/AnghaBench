
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct be_queue_info {int dummy; } ;
struct be_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int be_cmd_mccq_ext_create (struct be_adapter*,struct be_queue_info*,struct be_queue_info*) ;
 int be_cmd_mccq_org_create (struct be_adapter*,struct be_queue_info*,struct be_queue_info*) ;
 int dev_warn (int *,char*) ;
 int lancer_chip (struct be_adapter*) ;

int be_cmd_mccq_create(struct be_adapter *adapter,
   struct be_queue_info *mccq,
   struct be_queue_info *cq)
{
 int status;

 status = be_cmd_mccq_ext_create(adapter, mccq, cq);
 if (status && !lancer_chip(adapter)) {
  dev_warn(&adapter->pdev->dev, "Upgrade to F/W ver 2.102.235.0 "
   "or newer to avoid conflicting priorities between NIC "
   "and FCoE traffic");
  status = be_cmd_mccq_org_create(adapter, mccq, cq);
 }
 return status;
}
