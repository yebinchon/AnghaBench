
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct isci_port {TYPE_1__* port_task_scheduler_registers; } ;
struct TYPE_2__ {int control; } ;


 int SCU_PTSxCR_GEN_BIT (int ) ;
 int SUSPEND ;
 int readl (int *) ;
 int writel (int ,int *) ;

__attribute__((used)) static void sci_port_suspend_port_task_scheduler(struct isci_port *iport)
{
 u32 pts_control_value;

 pts_control_value = readl(&iport->port_task_scheduler_registers->control);
 pts_control_value |= SCU_PTSxCR_GEN_BIT(SUSPEND);
 writel(pts_control_value, &iport->port_task_scheduler_registers->control);
}
