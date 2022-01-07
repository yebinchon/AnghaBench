
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_scan_request_ext {int dummy; } ;
struct ipw_priv {int dummy; } ;


 int IPW_CMD_SCAN_REQUEST_EXT ;
 int ipw_send_cmd_pdu (struct ipw_priv*,int ,int,struct ipw_scan_request_ext*) ;

__attribute__((used)) static int ipw_send_scan_request_ext(struct ipw_priv *priv,
         struct ipw_scan_request_ext *request)
{
 return ipw_send_cmd_pdu(priv, IPW_CMD_SCAN_REQUEST_EXT,
    sizeof(*request), request);
}
