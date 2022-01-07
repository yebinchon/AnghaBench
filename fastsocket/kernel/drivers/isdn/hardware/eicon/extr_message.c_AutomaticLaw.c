
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int word ;
struct TYPE_10__ {int automatic_law; TYPE_1__* automatic_lawPLCI; TYPE_1__* plci; } ;
struct TYPE_9__ {scalar_t__ number; scalar_t__ command; int internal_command; } ;
typedef TYPE_1__ PLCI ;
typedef TYPE_2__ DIVA_CAPI_ADAPTER ;


 int ASSIGN ;
 int CAI ;
 int DSIG_ID ;
 int UID ;
 int USELAW_REQ ;
 int add_p (TYPE_1__*,int ,char*) ;
 int diva_get_extended_adapter_features (TYPE_2__*) ;
 int get_plci (TYPE_2__*) ;
 int send_req (TYPE_1__*) ;
 int sig_req (TYPE_1__*,int ,int ) ;

void AutomaticLaw(DIVA_CAPI_ADAPTER *a)
{
  word j;
  PLCI *splci;

  if(a->automatic_law) {
    return;
  }
  if((j=get_plci(a))) {
    diva_get_extended_adapter_features (a);
    splci = &a->plci[j-1];
    a->automatic_lawPLCI = splci;
    a->automatic_law = 1;
    add_p(splci,CAI,"\x01\x80");
    add_p(splci,UID,"\x06\x43\x61\x70\x69\x32\x30");
    splci->internal_command = USELAW_REQ;
    splci->command = 0;
    splci->number = 0;
    sig_req(splci,ASSIGN,DSIG_ID);
    send_req(splci);
  }
}
