
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ bus_pm; } ;
struct iwl_priv {TYPE_1__ power_data; } ;
struct iwl_powertable_cmd {int flags; } ;


 int IWL_DEBUG_POWER (struct iwl_priv*,char*) ;
 int IWL_POWER_PCI_PM_MSK ;
 int memset (struct iwl_powertable_cmd*,int ,int) ;

__attribute__((used)) static void iwl_power_sleep_cam_cmd(struct iwl_priv *priv,
        struct iwl_powertable_cmd *cmd)
{
 memset(cmd, 0, sizeof(*cmd));

 if (priv->power_data.bus_pm)
  cmd->flags |= IWL_POWER_PCI_PM_MSK;

 IWL_DEBUG_POWER(priv, "Sleep command for CAM\n");
}
