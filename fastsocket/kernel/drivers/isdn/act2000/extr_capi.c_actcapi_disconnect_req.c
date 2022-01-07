
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_6__ {scalar_t__ cause; int plci; } ;
struct TYPE_7__ {TYPE_1__ disconnect_req; } ;
struct TYPE_8__ {TYPE_2__ msg; } ;
typedef TYPE_3__ actcapi_msg ;
struct TYPE_9__ {int plci; } ;
typedef TYPE_4__ act2000_chan ;
typedef int act2000_card ;


 int ACTCAPI_CHKSKB ;
 int ACTCAPI_MKHDR (int,int,int) ;
 int ACTCAPI_QUEUE_TX ;

__attribute__((used)) static void
actcapi_disconnect_req(act2000_card *card, act2000_chan *chan)
{
 actcapi_msg *m;
 struct sk_buff *skb;

 ACTCAPI_MKHDR(3, 0x04, 0x00);
 ACTCAPI_CHKSKB;
 m->msg.disconnect_req.plci = chan->plci;
 m->msg.disconnect_req.cause = 0;
 ACTCAPI_QUEUE_TX;
}
