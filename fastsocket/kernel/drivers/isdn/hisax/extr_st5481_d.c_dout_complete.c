
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st5481_adapter {int dummy; } ;
struct FsmInst {struct st5481_adapter* userdata; } ;


 int usb_d_out (struct st5481_adapter*,long) ;

__attribute__((used)) static void dout_complete(struct FsmInst *fsm, int event, void *arg)
{
 struct st5481_adapter *adapter = fsm->userdata;
 long buf_nr = (long) arg;

 usb_d_out(adapter, buf_nr);
}
