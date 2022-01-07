
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct megasas_instance {int reg_set; TYPE_1__* instancet; } ;
struct megasas_cmd {int frame_phys_addr; } ;
struct TYPE_2__ {int (* fire_cmd ) (struct megasas_instance*,int ,int ,int ) ;} ;


 int stub1 (struct megasas_instance*,int ,int ,int ) ;

void
megasas_issue_dcmd(struct megasas_instance *instance, struct megasas_cmd *cmd)
{
 instance->instancet->fire_cmd(instance,
  cmd->frame_phys_addr, 0, instance->reg_set);
}
