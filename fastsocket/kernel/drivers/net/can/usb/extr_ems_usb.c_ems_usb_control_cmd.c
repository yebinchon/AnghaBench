
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ems_usb {int dummy; } ;
struct TYPE_2__ {int * generic; } ;
struct ems_cpc_msg {TYPE_1__ msg; scalar_t__ msgid; scalar_t__ length; int type; } ;


 int CPC_CMD_TYPE_CONTROL ;
 scalar_t__ CPC_MSG_HEADER_LEN ;
 int ems_usb_command_msg (struct ems_usb*,struct ems_cpc_msg*) ;

__attribute__((used)) static int ems_usb_control_cmd(struct ems_usb *dev, u8 val)
{
 struct ems_cpc_msg cmd;

 cmd.type = CPC_CMD_TYPE_CONTROL;
 cmd.length = CPC_MSG_HEADER_LEN + 1;

 cmd.msgid = 0;

 cmd.msg.generic[0] = val;

 return ems_usb_command_msg(dev, &cmd);
}
