
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct isci_host {TYPE_3__* scu_registers; } ;
struct TYPE_4__ {int control; } ;
struct TYPE_5__ {TYPE_1__ ptsg; } ;
struct TYPE_6__ {TYPE_2__ peg0; } ;


 int ETM_ENABLE ;
 int PTSG_ENABLE ;
 int SCU_PTSGCR_GEN_BIT (int ) ;
 int readl (int *) ;
 int writel (int,int *) ;

__attribute__((used)) static void sci_controller_enable_port_task_scheduler(struct isci_host *ihost)
{
 u32 port_task_scheduler_value;

 port_task_scheduler_value =
  readl(&ihost->scu_registers->peg0.ptsg.control);
 port_task_scheduler_value |=
  (SCU_PTSGCR_GEN_BIT(ETM_ENABLE) |
   SCU_PTSGCR_GEN_BIT(PTSG_ENABLE));
 writel(port_task_scheduler_value,
        &ihost->scu_registers->peg0.ptsg.control);
}
