
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ipw_priv {int dummy; } ;


 int IPW_CMD_SSID ;
 int IPW_ERROR (char*) ;
 int IW_ESSID_MAX_SIZE ;
 int ipw_send_cmd_pdu (struct ipw_priv*,int ,int ,int *) ;
 int min (int,int ) ;

__attribute__((used)) static int ipw_send_ssid(struct ipw_priv *priv, u8 * ssid, int len)
{
 if (!priv || !ssid) {
  IPW_ERROR("Invalid args\n");
  return -1;
 }

 return ipw_send_cmd_pdu(priv, IPW_CMD_SSID, min(len, IW_ESSID_MAX_SIZE),
    ssid);
}
