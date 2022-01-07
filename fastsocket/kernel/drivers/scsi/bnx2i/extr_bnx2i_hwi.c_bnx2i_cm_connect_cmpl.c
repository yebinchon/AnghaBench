
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cnic_sock {int flags; scalar_t__ context; } ;
struct bnx2i_endpoint {int ofld_wait; void* state; TYPE_1__* hba; } ;
struct TYPE_2__ {int adapter_state; } ;


 int ADAPTER_STATE_GOING_DOWN ;
 void* EP_STATE_CONNECT_COMPL ;
 void* EP_STATE_CONNECT_FAILED ;
 int SK_F_OFFLD_COMPLETE ;
 scalar_t__ test_bit (int ,int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void bnx2i_cm_connect_cmpl(struct cnic_sock *cm_sk)
{
 struct bnx2i_endpoint *ep = (struct bnx2i_endpoint *) cm_sk->context;

 if (test_bit(ADAPTER_STATE_GOING_DOWN, &ep->hba->adapter_state))
  ep->state = EP_STATE_CONNECT_FAILED;
 else if (test_bit(SK_F_OFFLD_COMPLETE, &cm_sk->flags))
  ep->state = EP_STATE_CONNECT_COMPL;
 else
  ep->state = EP_STATE_CONNECT_FAILED;

 wake_up_interruptible(&ep->ofld_wait);
}
