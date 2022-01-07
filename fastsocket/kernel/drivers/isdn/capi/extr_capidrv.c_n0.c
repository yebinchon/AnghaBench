
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;


struct TYPE_18__ {int arg; int driver; int command; } ;
typedef TYPE_3__ isdn_ctrl ;
struct TYPE_19__ {int chan; TYPE_9__* plcip; } ;
typedef TYPE_4__ capidrv_ncci ;
struct TYPE_16__ {int (* statcallb ) (TYPE_3__*) ;} ;
struct TYPE_20__ {TYPE_1__ interface; int myid; int msgid; } ;
typedef TYPE_5__ capidrv_contr ;
struct TYPE_21__ {int plci; } ;
struct TYPE_17__ {int applid; } ;
struct TYPE_15__ {TYPE_2__ ap; } ;


 int EV_PLCI_DISCONNECT_REQ ;
 int ISDN_STAT_BHUP ;
 int capi_fill_DISCONNECT_REQ (int *,int ,int ,int ,int *,int *,int *,int *) ;
 int cmsg ;
 int free_ncci (TYPE_5__*,TYPE_4__*) ;
 TYPE_12__ global ;
 int plci_change_state (TYPE_5__*,TYPE_9__*,int ) ;
 int send_message (TYPE_5__*,int *) ;
 int stub1 (TYPE_3__*) ;

__attribute__((used)) static void n0(capidrv_contr * card, capidrv_ncci * ncci)
{
 isdn_ctrl cmd;

 capi_fill_DISCONNECT_REQ(&cmsg,
     global.ap.applid,
     card->msgid++,
     ncci->plcip->plci,
     ((void*)0),
     ((void*)0),
     ((void*)0),
     ((void*)0)
 );
 plci_change_state(card, ncci->plcip, EV_PLCI_DISCONNECT_REQ);
 send_message(card, &cmsg);

 cmd.command = ISDN_STAT_BHUP;
 cmd.driver = card->myid;
 cmd.arg = ncci->chan;
 card->interface.statcallb(&cmd);
 free_ncci(card, ncci);
}
