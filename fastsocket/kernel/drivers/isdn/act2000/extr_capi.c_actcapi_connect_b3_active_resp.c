
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_6__ {int ncci; } ;
struct TYPE_7__ {TYPE_1__ connect_b3_active_resp; } ;
struct TYPE_8__ {TYPE_2__ msg; } ;
typedef TYPE_3__ actcapi_msg ;
struct TYPE_9__ {int fsm_state; int ncci; } ;
typedef TYPE_4__ act2000_chan ;
typedef int act2000_card ;


 int ACT2000_STATE_ACTIVE ;
 int ACTCAPI_CHKSKB ;
 int ACTCAPI_MKHDR (int,int,int) ;
 int ACTCAPI_QUEUE_TX ;

__attribute__((used)) static void
actcapi_connect_b3_active_resp(act2000_card *card, act2000_chan *chan)
{
 actcapi_msg *m;
 struct sk_buff *skb;

 ACTCAPI_MKHDR(2, 0x83, 0x03);
 ACTCAPI_CHKSKB;
 m->msg.connect_b3_active_resp.ncci = chan->ncci;
 chan->fsm_state = ACT2000_STATE_ACTIVE;
 ACTCAPI_QUEUE_TX;
}
