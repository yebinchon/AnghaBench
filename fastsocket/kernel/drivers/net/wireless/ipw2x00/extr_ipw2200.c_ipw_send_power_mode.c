
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipw_priv {int dummy; } ;
typedef int param ;
typedef int __le32 ;


 int IPW_CMD_POWER_MODE ;
 int IPW_ERROR (char*) ;


 int IPW_POWER_INDEX_3 ;
 int IPW_POWER_MODE_CAM ;
 int cpu_to_le32 (int) ;
 int ipw_send_cmd_pdu (struct ipw_priv*,int ,int,int *) ;

__attribute__((used)) static int ipw_send_power_mode(struct ipw_priv *priv, u32 mode)
{
 __le32 param;

 if (!priv) {
  IPW_ERROR("Invalid args\n");
  return -1;
 }



 switch (mode) {
 case 128:
  param = cpu_to_le32(IPW_POWER_INDEX_3);
  break;
 case 129:
  param = cpu_to_le32(IPW_POWER_MODE_CAM);
  break;
 default:
  param = cpu_to_le32(mode);
  break;
 }

 return ipw_send_cmd_pdu(priv, IPW_CMD_POWER_MODE, sizeof(param),
    &param);
}
