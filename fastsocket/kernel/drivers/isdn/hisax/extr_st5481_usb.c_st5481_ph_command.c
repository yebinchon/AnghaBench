
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st5481_adapter {int dummy; } ;


 int DBG (int,char*,int ) ;
 int ST5481_CMD_string (unsigned int) ;
 int TXCI ;
 int st5481_usb_device_ctrl_msg (struct st5481_adapter*,int ,unsigned int,int *,int *) ;

void st5481_ph_command(struct st5481_adapter *adapter, unsigned int command)
{
 DBG(8,"command=%s", ST5481_CMD_string(command));

 st5481_usb_device_ctrl_msg(adapter, TXCI, command, ((void*)0), ((void*)0));
}
