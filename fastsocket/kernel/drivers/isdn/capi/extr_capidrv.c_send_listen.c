
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int cipmask2; int cipmask; int contrnr; int msgid; } ;
typedef TYPE_2__ capidrv_contr ;
struct TYPE_7__ {int applid; } ;
struct TYPE_9__ {TYPE_1__ ap; } ;


 int EV_LISTEN_REQ ;
 int capi_fill_LISTEN_REQ (int *,int ,int ,int ,int,int ,int ,int *,int *) ;
 int cmdcmsg ;
 TYPE_6__ global ;
 int listen_change_state (TYPE_2__*,int ) ;
 int send_message (TYPE_2__*,int *) ;

__attribute__((used)) static void send_listen(capidrv_contr *card)
{
 capi_fill_LISTEN_REQ(&cmdcmsg, global.ap.applid,
        card->msgid++,
        card->contrnr,
        1 << 6,
        card->cipmask,
        card->cipmask2,
        ((void*)0), ((void*)0));
 listen_change_state(card, EV_LISTEN_REQ);
 send_message(card, &cmdcmsg);
}
