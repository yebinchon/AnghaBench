
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ipw2100_priv {int config; int essid_len; scalar_t__ essid; } ;
struct host_command {int host_command_length; scalar_t__ host_command_parameters; int host_command_sequence; int host_command; } ;


 int CFG_ASSOCIATE ;
 int DECLARE_SSID_BUF (int ) ;
 int EIO ;
 int IPW_DEBUG_HC (char*,int ) ;
 int IW_ESSID_MAX_SIZE ;
 int SSID ;
 int ipw2100_disable_adapter (struct ipw2100_priv*) ;
 scalar_t__ ipw2100_enable_adapter (struct ipw2100_priv*) ;
 int ipw2100_hw_send_command (struct ipw2100_priv*,struct host_command*) ;
 int memcpy (scalar_t__,char*,int) ;
 int memset (scalar_t__,int ,int) ;
 int min (int,int) ;
 int print_ssid (int ,char*,int) ;
 int ssid ;

__attribute__((used)) static int ipw2100_set_essid(struct ipw2100_priv *priv, char *essid,
        int length, int batch_mode)
{
 int ssid_len = min(length, IW_ESSID_MAX_SIZE);
 struct host_command cmd = {
  .host_command = SSID,
  .host_command_sequence = 0,
  .host_command_length = ssid_len
 };
 int err;
 DECLARE_SSID_BUF(ssid);

 IPW_DEBUG_HC("SSID: '%s'\n", print_ssid(ssid, essid, ssid_len));

 if (ssid_len)
  memcpy(cmd.host_command_parameters, essid, ssid_len);

 if (!batch_mode) {
  err = ipw2100_disable_adapter(priv);
  if (err)
   return err;
 }



 if (!ssid_len && !(priv->config & CFG_ASSOCIATE)) {
  int i;
  u8 *bogus = (u8 *) cmd.host_command_parameters;
  for (i = 0; i < IW_ESSID_MAX_SIZE; i++)
   bogus[i] = 0x18 + i;
  cmd.host_command_length = IW_ESSID_MAX_SIZE;
 }




 err = ipw2100_hw_send_command(priv, &cmd);
 if (!err) {
  memset(priv->essid + ssid_len, 0, IW_ESSID_MAX_SIZE - ssid_len);
  memcpy(priv->essid, essid, ssid_len);
  priv->essid_len = ssid_len;
 }

 if (!batch_mode) {
  if (ipw2100_enable_adapter(priv))
   err = -EIO;
 }

 return err;
}
