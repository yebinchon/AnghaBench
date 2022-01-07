
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
struct TYPE_7__ {TYPE_5__ ncpi; scalar_t__ rejectcause; int ncci; } ;
struct TYPE_8__ {TYPE_1__ connect_b3_resp; } ;
struct TYPE_9__ {TYPE_2__ msg; } ;
typedef TYPE_3__ actcapi_msg ;
struct TYPE_10__ {int fsm_state; int ncci; } ;
typedef TYPE_4__ act2000_chan ;
typedef int act2000_card ;
typedef scalar_t__ __u8 ;


 int ACT2000_STATE_BWAIT ;
 int ACTCAPI_CHKSKB ;
 int ACTCAPI_MKHDR (int,int,int) ;
 int ACTCAPI_QUEUE_TX ;
 int memset (TYPE_5__*,int ,int) ;

__attribute__((used)) static void
actcapi_connect_b3_resp(act2000_card *card, act2000_chan *chan, __u8 rejectcause)
{
 actcapi_msg *m;
 struct sk_buff *skb;

 ACTCAPI_MKHDR((rejectcause?3:17), 0x82, 0x03);
 ACTCAPI_CHKSKB;
 m->msg.connect_b3_resp.ncci = chan->ncci;
 m->msg.connect_b3_resp.rejectcause = rejectcause;
 if (!rejectcause) {
  memset(&m->msg.connect_b3_resp.ncpi, 0,
         sizeof(m->msg.connect_b3_resp.ncpi));
  m->msg.connect_b3_resp.ncpi.len = 13;
  m->msg.connect_b3_resp.ncpi.modulo = 8;
  chan->fsm_state = ACT2000_STATE_BWAIT;
 }
 ACTCAPI_QUEUE_TX;
}
