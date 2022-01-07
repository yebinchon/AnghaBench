
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fc_rport {int dev_loss_tmo; } ;



void fc_set_rport_loss_tmo(struct fc_rport *rport, u32 timeout)
{
 if (timeout)
  rport->dev_loss_tmo = timeout;
 else
  rport->dev_loss_tmo = 1;
}
