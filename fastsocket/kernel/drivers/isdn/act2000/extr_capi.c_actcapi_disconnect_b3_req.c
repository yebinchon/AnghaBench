
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_11__ {int len; int modulo; } ;
struct TYPE_7__ {TYPE_5__ ncpi; int ncci; } ;
struct TYPE_8__ {TYPE_1__ disconnect_b3_req; } ;
struct TYPE_9__ {TYPE_2__ msg; } ;
typedef TYPE_3__ actcapi_msg ;
struct TYPE_10__ {int fsm_state; int ncci; } ;
typedef TYPE_4__ act2000_chan ;
typedef int act2000_card ;


 int ACT2000_STATE_BHWAIT ;
 int ACTCAPI_CHKSKB ;
 int ACTCAPI_MKHDR (int,int,int) ;
 int ACTCAPI_QUEUE_TX ;
 int memset (TYPE_5__*,int ,int) ;

void
actcapi_disconnect_b3_req(act2000_card *card, act2000_chan *chan)
{
 actcapi_msg *m;
 struct sk_buff *skb;

 ACTCAPI_MKHDR(17, 0x84, 0x00);
 ACTCAPI_CHKSKB;
 m->msg.disconnect_b3_req.ncci = chan->ncci;
 memset(&m->msg.disconnect_b3_req.ncpi, 0,
        sizeof(m->msg.disconnect_b3_req.ncpi));
 m->msg.disconnect_b3_req.ncpi.len = 13;
 m->msg.disconnect_b3_req.ncpi.modulo = 8;
 chan->fsm_state = ACT2000_STATE_BHWAIT;
 ACTCAPI_QUEUE_TX;
}
