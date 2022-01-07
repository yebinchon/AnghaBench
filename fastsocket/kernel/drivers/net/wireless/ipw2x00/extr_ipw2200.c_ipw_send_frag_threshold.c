
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ipw_priv {int dummy; } ;
struct ipw_frag_threshold {int frag_threshold; } ;
typedef int frag_threshold ;


 int IPW_CMD_FRAG_THRESHOLD ;
 int IPW_ERROR (char*) ;
 int cpu_to_le16 (int ) ;
 int ipw_send_cmd_pdu (struct ipw_priv*,int ,int,struct ipw_frag_threshold*) ;

__attribute__((used)) static int ipw_send_frag_threshold(struct ipw_priv *priv, u16 frag)
{
 struct ipw_frag_threshold frag_threshold = {
  .frag_threshold = cpu_to_le16(frag),
 };

 if (!priv) {
  IPW_ERROR("Invalid args\n");
  return -1;
 }

 return ipw_send_cmd_pdu(priv, IPW_CMD_FRAG_THRESHOLD,
    sizeof(frag_threshold), &frag_threshold);
}
