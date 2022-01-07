
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct il3945_rxon_cmd {int dummy; } ;
struct il3945_powertable_cmd {int dummy; } ;





__attribute__((used)) static u16
il3945_get_hcmd_size(u8 cmd_id, u16 len)
{
 switch (cmd_id) {
 case 128:
  return sizeof(struct il3945_rxon_cmd);
 case 129:
  return sizeof(struct il3945_powertable_cmd);
 default:
  return len;
 }
}
