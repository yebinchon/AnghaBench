
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st5481_adapter {int leds; int d_in; } ;


 int DBG (int,char*) ;
 int GPIO_OUT ;
 int GREEN_LED ;
 int L1_MODE_NULL ;
 int st5481_in_mode (int *,int ) ;
 int st5481_usb_device_ctrl_msg (struct st5481_adapter*,int ,int ,int *,int *) ;

__attribute__((used)) static void ph_disconnect(struct st5481_adapter *adapter)
{
 DBG(8,"");

 st5481_in_mode(&adapter->d_in, L1_MODE_NULL);


 adapter->leds &= ~GREEN_LED;
 st5481_usb_device_ctrl_msg(adapter, GPIO_OUT, adapter->leds, ((void*)0), ((void*)0));
}
