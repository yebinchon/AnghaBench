
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ipw_retry_limit {int long_retry_limit; int short_retry_limit; } ;
struct ipw_priv {int dummy; } ;
typedef int retry_limit ;


 int IPW_CMD_RETRY_LIMIT ;
 int IPW_ERROR (char*) ;
 int ipw_send_cmd_pdu (struct ipw_priv*,int ,int,struct ipw_retry_limit*) ;

__attribute__((used)) static int ipw_send_retry_limit(struct ipw_priv *priv, u8 slimit, u8 llimit)
{
 struct ipw_retry_limit retry_limit = {
  .short_retry_limit = slimit,
  .long_retry_limit = llimit
 };

 if (!priv) {
  IPW_ERROR("Invalid args\n");
  return -1;
 }

 return ipw_send_cmd_pdu(priv, IPW_CMD_RETRY_LIMIT, sizeof(retry_limit),
    &retry_limit);
}
