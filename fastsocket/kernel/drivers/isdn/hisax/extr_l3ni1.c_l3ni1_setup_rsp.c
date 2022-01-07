
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_2__ {int bchannel; } ;
struct l3_process {int debug; int timer; int st; TYPE_1__ para; } ;


 int CC_T313 ;
 int L3AddTimer (int *,int ,int ) ;
 int L3DelTimer (int *) ;
 int L3_DEB_WARN ;
 int MT_CONNECT ;
 int T313 ;
 int l3_debug (int ,char*) ;
 int l3ni1_disconnect_req (struct l3_process*,int ,void*) ;
 int l3ni1_message_plus_chid (struct l3_process*,int ) ;
 int newl3state (struct l3_process*,int) ;

__attribute__((used)) static void
l3ni1_setup_rsp(struct l3_process *pc, u_char pr,
   void *arg)
{
        if (!pc->para.bchannel)
  { if (pc->debug & L3_DEB_WARN)
        l3_debug(pc->st, "D-chan connect for waiting call");
           l3ni1_disconnect_req(pc, pr, arg);
           return;
         }
 newl3state(pc, 8);
 if (pc->debug & L3_DEB_WARN)
  l3_debug(pc->st, "D-chan connect for waiting call");
 l3ni1_message_plus_chid(pc, MT_CONNECT);
 L3DelTimer(&pc->timer);
 L3AddTimer(&pc->timer, T313, CC_T313);
}
