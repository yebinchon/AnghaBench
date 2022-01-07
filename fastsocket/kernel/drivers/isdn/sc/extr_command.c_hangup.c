
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int devicename; } ;


 int CEPID ;
 int ENODEV ;
 int IS_VALID_CARD (int) ;
 int ceReqClass1 ;
 int ceReqPhyDisconnect ;
 int ceReqTypePhy ;
 int pr_debug (char*,int,...) ;
 TYPE_1__** sc_adapter ;
 int sendmessage (int,int ,int ,int ,int ,unsigned char,int ,int *) ;

__attribute__((used)) static int hangup(int card, unsigned long channel)
{
 int status;

 if(!IS_VALID_CARD(card)) {
  pr_debug("Invalid param: %d is not a valid card id\n", card);
  return -ENODEV;
 }

 status = sendmessage(card, CEPID, ceReqTypePhy,
       ceReqClass1,
       ceReqPhyDisconnect,
       (unsigned char) channel+1,
       0,
       ((void*)0));
 pr_debug("%s: Sent HANGUP message to channel %lu\n",
  sc_adapter[card]->devicename, channel+1);
 return status;
}
