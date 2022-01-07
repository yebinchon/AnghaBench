
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pci_pm; } ;
struct il_priv {TYPE_1__ power_data; } ;
struct il_powertable_cmd {int flags; } ;


 int D_POWER (char*) ;
 int IL_POWER_PCI_PM_MSK ;
 int memset (struct il_powertable_cmd*,int ,int) ;

__attribute__((used)) static void
il_power_sleep_cam_cmd(struct il_priv *il, struct il_powertable_cmd *cmd)
{
 memset(cmd, 0, sizeof(*cmd));

 if (il->power_data.pci_pm)
  cmd->flags |= IL_POWER_PCI_PM_MSK;

 D_POWER("Sleep command for CAM\n");
}
