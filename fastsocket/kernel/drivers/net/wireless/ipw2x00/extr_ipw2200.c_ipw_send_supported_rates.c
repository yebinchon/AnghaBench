
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_supported_rates {int dummy; } ;
struct ipw_priv {int dummy; } ;


 int IPW_CMD_SUPPORTED_RATES ;
 int IPW_ERROR (char*) ;
 int ipw_send_cmd_pdu (struct ipw_priv*,int ,int,struct ipw_supported_rates*) ;

__attribute__((used)) static int ipw_send_supported_rates(struct ipw_priv *priv,
        struct ipw_supported_rates *rates)
{
 if (!priv || !rates) {
  IPW_ERROR("Invalid args\n");
  return -1;
 }

 return ipw_send_cmd_pdu(priv, IPW_CMD_SUPPORTED_RATES, sizeof(*rates),
    rates);
}
