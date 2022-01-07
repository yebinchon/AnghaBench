
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ippp_struct {TYPE_1__* lp; } ;
struct TYPE_2__ {int ppp_slot; } ;


 int PPP_COMP ;
 int isdn_ppp_fill_rq (int *,int ,int ,int ) ;

__attribute__((used)) static void isdn_ppp_ccp_kickup(struct ippp_struct *is)
{
 isdn_ppp_fill_rq(((void*)0), 0, PPP_COMP, is->lp->ppp_slot);
}
