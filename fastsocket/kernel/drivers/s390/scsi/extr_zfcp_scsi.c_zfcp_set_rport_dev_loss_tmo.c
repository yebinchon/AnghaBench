
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fc_rport {int dev_loss_tmo; } ;



__attribute__((used)) static void zfcp_set_rport_dev_loss_tmo(struct fc_rport *rport, u32 timeout)
{
 rport->dev_loss_tmo = timeout;
}
