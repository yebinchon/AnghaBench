
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int devicename; } ;


 int CMPID ;
 int ENODEV ;
 int IS_VALID_CARD (int) ;
 int cmReqClass0 ;
 int cmReqStartProc ;
 int cmReqType2 ;
 int pr_debug (char*,int) ;
 TYPE_1__** sc_adapter ;
 int sendmessage (int,int ,int ,int ,int ,int ,int ,int *) ;

int startproc(int card)
{
 int status;

 if(!IS_VALID_CARD(card)) {
  pr_debug("Invalid param: %d is not a valid card id\n", card);
  return -ENODEV;
 }




        status = sendmessage(card, CMPID,cmReqType2,
     cmReqClass0,
     cmReqStartProc,
     0,0,((void*)0));
 pr_debug("%s: Sent startProc\n", sc_adapter[card]->devicename);

 return status;
}
