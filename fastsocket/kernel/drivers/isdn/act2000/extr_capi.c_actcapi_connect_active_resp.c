
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_6__ {int plci; } ;
struct TYPE_7__ {TYPE_1__ connect_resp; } ;
struct TYPE_8__ {TYPE_2__ msg; } ;
typedef TYPE_3__ actcapi_msg ;
struct TYPE_9__ {scalar_t__ fsm_state; int plci; } ;
typedef TYPE_4__ act2000_chan ;
typedef int act2000_card ;


 scalar_t__ ACT2000_STATE_IBWAIT ;
 scalar_t__ ACT2000_STATE_IWAIT ;
 int ACTCAPI_CHKSKB ;
 int ACTCAPI_MKHDR (int,int,int) ;
 int ACTCAPI_QUEUE_TX ;

__attribute__((used)) static void
actcapi_connect_active_resp(act2000_card *card, act2000_chan *chan)
{
 actcapi_msg *m;
 struct sk_buff *skb;

 ACTCAPI_MKHDR(2, 0x03, 0x03);
 ACTCAPI_CHKSKB;
 m->msg.connect_resp.plci = chan->plci;
 if (chan->fsm_state == ACT2000_STATE_IWAIT)
  chan->fsm_state = ACT2000_STATE_IBWAIT;
 ACTCAPI_QUEUE_TX;
}
