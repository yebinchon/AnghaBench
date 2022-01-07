
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fcoe_fcf_device {int dev_loss_tmo; scalar_t__ state; int dev_loss_work; int * priv; } ;
struct fcoe_ctlr_device {int dummy; } ;


 scalar_t__ FCOE_FCF_STATE_CONNECTED ;
 scalar_t__ FCOE_FCF_STATE_DISCONNECTED ;
 int HZ ;
 int fcoe_ctlr_device_queue_devloss_work (struct fcoe_ctlr_device*,int *,int) ;
 struct fcoe_ctlr_device* fcoe_fcf_dev_to_ctlr_dev (struct fcoe_fcf_device*) ;

void fcoe_fcf_device_delete(struct fcoe_fcf_device *fcf)
{
 struct fcoe_ctlr_device *ctlr = fcoe_fcf_dev_to_ctlr_dev(fcf);
 int timeout = fcf->dev_loss_tmo;

 if (fcf->state != FCOE_FCF_STATE_CONNECTED)
  return;

 fcf->state = FCOE_FCF_STATE_DISCONNECTED;






 fcf->priv = ((void*)0);

 fcoe_ctlr_device_queue_devloss_work(ctlr, &fcf->dev_loss_work,
        timeout * HZ);
}
