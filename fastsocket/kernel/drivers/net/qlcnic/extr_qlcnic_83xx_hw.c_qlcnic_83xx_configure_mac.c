
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_1__ req; } ;
struct qlcnic_adapter {int dummy; } ;




 int memcpy (int*,int*,int) ;

void qlcnic_83xx_configure_mac(struct qlcnic_adapter *adapter, u8 *mac,
          u8 type, struct qlcnic_cmd_args *cmd)
{
 switch (type) {
 case 128:
 case 129:
  memcpy(&cmd->req.arg[2], mac, sizeof(u32));
  memcpy(&cmd->req.arg[3], &mac[4], sizeof(u16));
  break;
 }
 cmd->req.arg[1] = type;
}
