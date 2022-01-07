
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int debug; int printdebug; struct isac* userdata; int state; int * fsm; } ;
struct isac {int timer; TYPE_1__ l1m; int * tx_skb; } ;


 int FsmInitTimer (TYPE_1__*,int *) ;
 int ST_L1_RESET ;
 int l1fsm ;
 int l1m_debug ;

void isac_init(struct isac *isac)
{
 isac->tx_skb = ((void*)0);
 isac->l1m.fsm = &l1fsm;
 isac->l1m.state = ST_L1_RESET;



 isac->l1m.debug = 0;

 isac->l1m.userdata = isac;
 isac->l1m.printdebug = l1m_debug;
 FsmInitTimer(&isac->l1m, &isac->timer);
}
