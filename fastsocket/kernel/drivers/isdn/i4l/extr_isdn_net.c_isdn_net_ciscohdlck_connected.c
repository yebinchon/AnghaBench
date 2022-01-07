
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {unsigned long data; scalar_t__ expires; int function; } ;
struct TYPE_6__ {int cisco_keepalive_period; TYPE_4__ cisco_timer; scalar_t__ cisco_debserint; scalar_t__ cisco_line_state; scalar_t__ cisco_last_slarp_in; scalar_t__ cisco_yourseq; scalar_t__ cisco_mineseen; scalar_t__ cisco_myseq; } ;
typedef TYPE_1__ isdn_net_local ;


 int HZ ;
 int ISDN_TIMER_KEEPINT ;
 int add_timer (TYPE_4__*) ;
 int init_timer (TYPE_4__*) ;
 int isdn_net_ciscohdlck_slarp_send_keepalive ;
 int isdn_net_ciscohdlck_slarp_send_request (TYPE_1__*) ;
 scalar_t__ jiffies ;

__attribute__((used)) static void
isdn_net_ciscohdlck_connected(isdn_net_local *lp)
{
 lp->cisco_myseq = 0;
 lp->cisco_mineseen = 0;
 lp->cisco_yourseq = 0;
 lp->cisco_keepalive_period = ISDN_TIMER_KEEPINT;
 lp->cisco_last_slarp_in = 0;
 lp->cisco_line_state = 0;
 lp->cisco_debserint = 0;


 isdn_net_ciscohdlck_slarp_send_request(lp);

 init_timer(&lp->cisco_timer);
 lp->cisco_timer.data = (unsigned long) lp;
 lp->cisco_timer.function = isdn_net_ciscohdlck_slarp_send_keepalive;
 lp->cisco_timer.expires = jiffies + lp->cisco_keepalive_period * HZ;
 add_timer(&lp->cisco_timer);
}
