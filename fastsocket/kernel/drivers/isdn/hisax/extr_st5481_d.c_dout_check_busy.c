
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st5481_d_out {int busy; } ;
struct st5481_adapter {struct st5481_d_out d_out; } ;
struct FsmInst {struct st5481_adapter* userdata; } ;


 int dout_stop (struct FsmInst*,int,void*) ;
 int test_bit (int,int *) ;

__attribute__((used)) static void dout_check_busy(struct FsmInst *fsm, int event, void *arg)
{
 struct st5481_adapter *adapter = fsm->userdata;
 struct st5481_d_out *d_out = &adapter->d_out;

 if (!test_bit(0, &d_out->busy) && !test_bit(1, &d_out->busy))
  dout_stop(fsm, event, arg);
}
