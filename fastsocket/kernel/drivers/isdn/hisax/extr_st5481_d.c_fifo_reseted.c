
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fsm; } ;
struct st5481_adapter {TYPE_1__ d_out; } ;


 int EV_DOUT_RESETED ;
 int FsmEvent (int *,int ,int *) ;

__attribute__((used)) static void fifo_reseted(void *context)
{
 struct st5481_adapter *adapter = context;

 FsmEvent(&adapter->d_out.fsm, EV_DOUT_RESETED, ((void*)0));
}
