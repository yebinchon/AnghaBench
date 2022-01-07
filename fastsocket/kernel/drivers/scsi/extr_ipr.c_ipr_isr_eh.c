
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ipr_ioa_cfg {scalar_t__ sdt_state; TYPE_1__* pdev; int errors_logged; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ GET_DUMP ;
 int IPR_SHUTDOWN_NONE ;
 scalar_t__ WAIT_FOR_DUMP ;
 int dev_err (int *,char*,char*,int ) ;
 int ipr_initiate_ioa_reset (struct ipr_ioa_cfg*,int ) ;

__attribute__((used)) static void ipr_isr_eh(struct ipr_ioa_cfg *ioa_cfg, char *msg, u16 number)
{
 ioa_cfg->errors_logged++;
 dev_err(&ioa_cfg->pdev->dev, "%s %d\n", msg, number);

 if (WAIT_FOR_DUMP == ioa_cfg->sdt_state)
  ioa_cfg->sdt_state = GET_DUMP;

 ipr_initiate_ioa_reset(ioa_cfg, IPR_SHUTDOWN_NONE);
}
