
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st5481_adapter {int dummy; } ;


 int DBG (int,char*) ;
 int SET_DEFAULT ;
 int st5481_usb_device_ctrl_msg (struct st5481_adapter*,int ,int ,int *,int *) ;

void st5481_stop(struct st5481_adapter *adapter)
{
 DBG(8,"");

 st5481_usb_device_ctrl_msg(adapter, SET_DEFAULT, 0, ((void*)0), ((void*)0));
}
