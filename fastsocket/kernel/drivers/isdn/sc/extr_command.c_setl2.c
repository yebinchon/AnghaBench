
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int devicename; TYPE_1__* channel; } ;
struct TYPE_3__ {int l2_proto; } ;


 int CEPID ;
 int ENODEV ;
 int IS_VALID_CARD (int) ;
 int ceReqCallGetFrameFormat ;
 int ceReqClass0 ;
 int ceReqTypeCall ;
 int pr_debug (char*,int,...) ;
 TYPE_2__** sc_adapter ;
 int sendmessage (int,int ,int ,int ,int ,unsigned char,int,unsigned int*) ;

__attribute__((used)) static int setl2(int card, unsigned long arg)
{
 int status =0;
 int protocol,channel;

 if(!IS_VALID_CARD(card)) {
  pr_debug("Invalid param: %d is not a valid card id\n", card);
  return -ENODEV;
 }
 protocol = arg >> 8;
 channel = arg & 0xff;
 sc_adapter[card]->channel[channel].l2_proto = protocol;




 pr_debug("%s: Sending GetFrameFormat for channel %d\n",
  sc_adapter[card]->devicename, channel+1);
 status = sendmessage(card, CEPID, ceReqTypeCall,
     ceReqClass0,
     ceReqCallGetFrameFormat,
     (unsigned char)channel+1,
     1,
     (unsigned int *) protocol);
 if(status)
  return status;
 return 0;
}
