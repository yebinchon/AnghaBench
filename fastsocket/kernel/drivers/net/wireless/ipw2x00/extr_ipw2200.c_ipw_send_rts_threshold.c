
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ipw_rts_threshold {int rts_threshold; } ;
struct ipw_priv {int dummy; } ;
typedef int rts_threshold ;


 int IPW_CMD_RTS_THRESHOLD ;
 int IPW_ERROR (char*) ;
 int cpu_to_le16 (int ) ;
 int ipw_send_cmd_pdu (struct ipw_priv*,int ,int,struct ipw_rts_threshold*) ;

__attribute__((used)) static int ipw_send_rts_threshold(struct ipw_priv *priv, u16 rts)
{
 struct ipw_rts_threshold rts_threshold = {
  .rts_threshold = cpu_to_le16(rts),
 };

 if (!priv) {
  IPW_ERROR("Invalid args\n");
  return -1;
 }

 return ipw_send_cmd_pdu(priv, IPW_CMD_RTS_THRESHOLD,
    sizeof(rts_threshold), &rts_threshold);
}
