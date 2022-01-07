
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct st5481_in {TYPE_1__** urb; struct st5481_adapter* adapter; } ;
struct st5481_adapter {int usb_dev; } ;
struct TYPE_2__ {int dev; } ;


 int DBG (int,char*) ;
 int GFP_KERNEL ;
 int SUBMIT_URB (TYPE_1__*,int ) ;

__attribute__((used)) static void st5481_start_rcv(void *context)
{
 struct st5481_in *in = context;
 struct st5481_adapter *adapter = in->adapter;

 DBG(4,"");

 in->urb[0]->dev = adapter->usb_dev;
 SUBMIT_URB(in->urb[0], GFP_KERNEL);

 in->urb[1]->dev = adapter->usb_dev;
 SUBMIT_URB(in->urb[1], GFP_KERNEL);
}
