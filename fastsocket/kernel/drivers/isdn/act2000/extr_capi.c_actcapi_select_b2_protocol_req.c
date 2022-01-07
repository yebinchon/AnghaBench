
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
struct TYPE_11__ {int len; int dlen; int laa; int lab; int win; int modulo; } ;
struct TYPE_7__ {int protocol; TYPE_5__ dlpd; int plci; } ;
struct TYPE_8__ {TYPE_1__ select_b2_protocol_req; } ;
struct TYPE_9__ {TYPE_2__ msg; } ;
typedef TYPE_3__ actcapi_msg ;
struct TYPE_10__ {int l2prot; int plci; } ;
typedef TYPE_4__ act2000_chan ;
typedef int act2000_card ;


 int ACTCAPI_CHKSKB ;
 int ACTCAPI_MKHDR (int,int,int) ;
 int ACTCAPI_QUEUE_TX ;





 int memset (TYPE_5__*,int ,int) ;

void
actcapi_select_b2_protocol_req(act2000_card *card, act2000_chan *chan)
{
 actcapi_msg *m;
 struct sk_buff *skb;

 ACTCAPI_MKHDR(10, 0x40, 0x00);
 ACTCAPI_CHKSKB;
 m->msg.select_b2_protocol_req.plci = chan->plci;
 memset(&m->msg.select_b2_protocol_req.dlpd, 0,
        sizeof(m->msg.select_b2_protocol_req.dlpd));
 m->msg.select_b2_protocol_req.dlpd.len = 6;
 switch (chan->l2prot) {
  case 131:
   m->msg.select_b2_protocol_req.protocol = 0x03;
   m->msg.select_b2_protocol_req.dlpd.dlen = 4000;
   break;
  case 132:
   m->msg.select_b2_protocol_req.protocol = 0x02;
   m->msg.select_b2_protocol_req.dlpd.dlen = 4000;
   break;
  case 129:
  case 128:
  case 130:
   m->msg.select_b2_protocol_req.protocol = 0x01;
   m->msg.select_b2_protocol_req.dlpd.dlen = 4000;
   m->msg.select_b2_protocol_req.dlpd.laa = 3;
   m->msg.select_b2_protocol_req.dlpd.lab = 1;
   m->msg.select_b2_protocol_req.dlpd.win = 7;
   m->msg.select_b2_protocol_req.dlpd.modulo = 8;
   break;
 }
 ACTCAPI_QUEUE_TX;
}
