
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ipw2100_priv {int dummy; } ;
struct host_command {int host_command_parameters; int host_command_length; int host_command_sequence; int host_command; } ;


 int ETH_ALEN ;
 int IPW_DEBUG_HC (char*,...) ;
 int MANDATORY_BSSID ;
 int ipw2100_disable_adapter (struct ipw2100_priv*) ;
 int ipw2100_enable_adapter (struct ipw2100_priv*) ;
 int ipw2100_hw_send_command (struct ipw2100_priv*,struct host_command*) ;
 int memcpy (int ,int *,int ) ;

__attribute__((used)) static int ipw2100_set_mandatory_bssid(struct ipw2100_priv *priv, u8 * bssid,
           int batch_mode)
{
 struct host_command cmd = {
  .host_command = MANDATORY_BSSID,
  .host_command_sequence = 0,
  .host_command_length = (bssid == ((void*)0)) ? 0 : ETH_ALEN
 };
 int err;
 if (bssid != ((void*)0))
  memcpy(cmd.host_command_parameters, bssid, ETH_ALEN);

 if (!batch_mode) {
  err = ipw2100_disable_adapter(priv);
  if (err)
   return err;
 }

 err = ipw2100_hw_send_command(priv, &cmd);

 if (!batch_mode)
  ipw2100_enable_adapter(priv);

 return err;
}
