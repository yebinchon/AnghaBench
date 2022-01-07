
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fcoe_ctlr {int state; scalar_t__ lp; } ;
typedef enum fip_state { ____Placeholder_fip_state } fip_state ;


 int LIBFCOE_FIP_DBG (struct fcoe_ctlr*,char*,int ,int ) ;
 int fcoe_ctlr_state (int) ;

__attribute__((used)) static void fcoe_ctlr_set_state(struct fcoe_ctlr *fip, enum fip_state state)
{
 if (state == fip->state)
  return;
 if (fip->lp)
  LIBFCOE_FIP_DBG(fip, "state %s -> %s\n",
   fcoe_ctlr_state(fip->state), fcoe_ctlr_state(state));
 fip->state = state;
}
