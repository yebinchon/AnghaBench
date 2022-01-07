
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int sleep_cmd; int sleep_cmd_next; } ;
struct TYPE_5__ {scalar_t__ state; } ;
struct il_priv {TYPE_3__ power_data; TYPE_2__ chain_noise_data; TYPE_1__* ops; int status; int mutex; } ;
struct il_powertable_cmd {int flags; } ;
struct TYPE_4__ {int (* update_chain_flags ) (struct il_priv*) ;} ;


 int D_INFO (char*) ;
 int D_POWER (char*,scalar_t__) ;
 int EIO ;
 scalar_t__ IL_CHAIN_NOISE_ALIVE ;
 scalar_t__ IL_CHAIN_NOISE_DONE ;
 int IL_ERR (char*,int) ;
 int IL_POWER_DRIVER_ALLOW_SLEEP_MSK ;
 int S_POWER_PMI ;
 int S_SCANNING ;
 int clear_bit (int ,int *) ;
 int il_is_ready_rf (struct il_priv*) ;
 int il_set_power (struct il_priv*,struct il_powertable_cmd*) ;
 int lockdep_assert_held (int *) ;
 int memcmp (int *,struct il_powertable_cmd*,int) ;
 int memcpy (int *,struct il_powertable_cmd*,int) ;
 int set_bit (int ,int *) ;
 int stub1 (struct il_priv*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int
il_power_set_mode(struct il_priv *il, struct il_powertable_cmd *cmd, bool force)
{
 int ret;
 bool update_chains;

 lockdep_assert_held(&il->mutex);


 update_chains = il->chain_noise_data.state == IL_CHAIN_NOISE_DONE ||
     il->chain_noise_data.state == IL_CHAIN_NOISE_ALIVE;

 if (!memcmp(&il->power_data.sleep_cmd, cmd, sizeof(*cmd)) && !force)
  return 0;

 if (!il_is_ready_rf(il))
  return -EIO;


 memcpy(&il->power_data.sleep_cmd_next, cmd, sizeof(*cmd));
 if (test_bit(S_SCANNING, &il->status) && !force) {
  D_INFO("Defer power set mode while scanning\n");
  return 0;
 }

 if (cmd->flags & IL_POWER_DRIVER_ALLOW_SLEEP_MSK)
  set_bit(S_POWER_PMI, &il->status);

 ret = il_set_power(il, cmd);
 if (!ret) {
  if (!(cmd->flags & IL_POWER_DRIVER_ALLOW_SLEEP_MSK))
   clear_bit(S_POWER_PMI, &il->status);

  if (il->ops->update_chain_flags && update_chains)
   il->ops->update_chain_flags(il);
  else if (il->ops->update_chain_flags)
   D_POWER("Cannot update the power, chain noise "
    "calibration running: %d\n",
    il->chain_noise_data.state);

  memcpy(&il->power_data.sleep_cmd, cmd, sizeof(*cmd));
 } else
  IL_ERR("set power fail, ret = %d", ret);

 return ret;
}
