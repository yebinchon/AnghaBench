
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st5481_bcs {scalar_t__ channel; } ;


 int DBG (int,char*,scalar_t__) ;
 int usb_b_out (struct st5481_bcs*,int) ;

__attribute__((used)) static void st5481B_start_xfer(void *context)
{
 struct st5481_bcs *bcs = context;

 DBG(4,"B%d",bcs->channel+1);



 usb_b_out(bcs,0);
 usb_b_out(bcs,1);
}
