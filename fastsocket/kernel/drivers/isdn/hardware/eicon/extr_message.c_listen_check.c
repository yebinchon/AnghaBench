
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t word ;
typedef scalar_t__ byte ;
struct TYPE_9__ {size_t listen_active; size_t max_plci; TYPE_1__* plci; scalar_t__ max_listen; int adapter_disabled; } ;
struct TYPE_8__ {int internal_command; int State; scalar_t__ notifiedcall; } ;
typedef TYPE_1__ PLCI ;
typedef TYPE_2__ DIVA_CAPI_ADAPTER ;


 int ASSIGN ;
 int CAI ;
 int DSIG_ID ;
 int KEY ;
 int LISTENING ;
 int LISTEN_SIG_ASSIGN_PEND ;
 int LLI ;
 int OAD ;
 int SHIFT ;
 int SIN ;
 int UID ;
 int add_p (TYPE_1__*,int,char*) ;
 int dbug (int,int ) ;
 int dprintf (char*,size_t,...) ;
 size_t get_plci (TYPE_2__*) ;
 int remove_started ;
 int send_req (TYPE_1__*) ;
 int sig_req (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void listen_check(DIVA_CAPI_ADAPTER *a)
{
  word i,j;
  PLCI * plci;
  byte activnotifiedcalls = 0;

  dbug(1,dprintf("listen_check(%d,%d)",a->listen_active,a->max_listen));
  if (!remove_started && !a->adapter_disabled)
  {
    for(i=0;i<a->max_plci;i++)
    {
      plci = &(a->plci[i]);
      if(plci->notifiedcall) activnotifiedcalls++;
    }
    dbug(1,dprintf("listen_check(%d)",activnotifiedcalls));

    for(i=a->listen_active; i < ((word)(a->max_listen+activnotifiedcalls)); i++) {
      if((j=get_plci(a))) {
        a->listen_active++;
        plci = &a->plci[j-1];
        plci->State = LISTENING;

        add_p(plci,OAD,"\x01\xfd");

        add_p(plci,KEY,"\x04\x43\x41\x32\x30");

        add_p(plci,CAI,"\x01\xc0");
        add_p(plci,UID,"\x06\x43\x61\x70\x69\x32\x30");
        add_p(plci,LLI,"\x01\xc4");
        add_p(plci,SHIFT|6,((void*)0));
        add_p(plci,SIN,"\x02\x00\x00");
        plci->internal_command = LISTEN_SIG_ASSIGN_PEND;
        sig_req(plci,ASSIGN,DSIG_ID);
        send_req(plci);
      }
    }
  }
}
