
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fc_rport {int dev_loss_tmo; } ;



__attribute__((used)) static void
qla2x00_set_rport_loss_tmo(struct fc_rport *rport, uint32_t timeout)
{
 if (timeout)
  rport->dev_loss_tmo = timeout;
 else
  rport->dev_loss_tmo = 1;
}
