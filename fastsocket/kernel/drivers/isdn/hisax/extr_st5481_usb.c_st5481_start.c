
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct st5481_intr {int urb; } ;
struct st5481_adapter {int leds; struct st5481_intr intr; } ;


 int DBG (int,char*) ;






 int GFP_KERNEL ;
 int ST5481_CMD_PUP ;

 int SUBMIT_URB (int ,int ) ;
 int st5481_ph_command (struct st5481_adapter*,int ) ;
 int st5481_usb_device_ctrl_msg (struct st5481_adapter*,int,int,int *,int *) ;

void st5481_start(struct st5481_adapter *adapter)
{
 static const u8 init_cmd_table[]={
  129,0,
  128,0,
  131,0x0d,
  132,0x29,
  130,0x14,
  137,0x01,
  136,134,


  139,6,
  141,20,
  138,6,
  140,20,
  135,133 +142 +143,
  0
 };
 struct st5481_intr *intr = &adapter->intr;
 int i = 0;
 u8 request,value;

 DBG(8,"");

 adapter->leds = 134;


 SUBMIT_URB(intr->urb, GFP_KERNEL);

 while ((request = init_cmd_table[i++])) {
  value = init_cmd_table[i++];
  st5481_usb_device_ctrl_msg(adapter, request, value, ((void*)0), ((void*)0));
 }
 st5481_ph_command(adapter, ST5481_CMD_PUP);
}
