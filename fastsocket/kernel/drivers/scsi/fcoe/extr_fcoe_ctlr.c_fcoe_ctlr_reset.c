
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fcoe_ctlr {int flogi_oxid; scalar_t__ sol_time; scalar_t__ port_ka_time; scalar_t__ ctlr_ka_time; int timer; } ;


 int FC_XID_UNKNOWN ;
 int del_timer (int *) ;
 int fcoe_ctlr_map_dest (struct fcoe_ctlr*) ;
 int fcoe_ctlr_reset_fcfs (struct fcoe_ctlr*) ;

__attribute__((used)) static void fcoe_ctlr_reset(struct fcoe_ctlr *fip)
{
 fcoe_ctlr_reset_fcfs(fip);
 del_timer(&fip->timer);
 fip->ctlr_ka_time = 0;
 fip->port_ka_time = 0;
 fip->sol_time = 0;
 fip->flogi_oxid = FC_XID_UNKNOWN;
 fcoe_ctlr_map_dest(fip);
}
