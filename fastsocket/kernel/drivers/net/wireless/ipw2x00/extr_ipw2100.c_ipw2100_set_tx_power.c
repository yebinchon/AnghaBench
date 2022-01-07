
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ipw2100_priv {scalar_t__ tx_power; TYPE_1__* ieee; } ;
struct host_command {int host_command_length; scalar_t__* host_command_parameters; int host_command_sequence; int host_command; } ;
struct TYPE_2__ {scalar_t__ iw_mode; } ;


 scalar_t__ IPW_TX_POWER_DEFAULT ;
 scalar_t__ IPW_TX_POWER_MAX_DBM ;
 scalar_t__ IPW_TX_POWER_MIN_DBM ;
 scalar_t__ IW_MODE_ADHOC ;
 int TX_POWER_INDEX ;
 int ipw2100_hw_send_command (struct ipw2100_priv*,struct host_command*) ;

__attribute__((used)) static int ipw2100_set_tx_power(struct ipw2100_priv *priv, u32 tx_power)
{
 struct host_command cmd = {
  .host_command = TX_POWER_INDEX,
  .host_command_sequence = 0,
  .host_command_length = 4
 };
 int err = 0;
 u32 tmp = tx_power;

 if (tx_power != IPW_TX_POWER_DEFAULT)
  tmp = (tx_power - IPW_TX_POWER_MIN_DBM) * 16 /
        (IPW_TX_POWER_MAX_DBM - IPW_TX_POWER_MIN_DBM);

 cmd.host_command_parameters[0] = tmp;

 if (priv->ieee->iw_mode == IW_MODE_ADHOC)
  err = ipw2100_hw_send_command(priv, &cmd);
 if (!err)
  priv->tx_power = tx_power;

 return 0;
}
