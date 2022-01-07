
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_erp_action {int action; int unit; int port; int adapter; } ;






 int _zfcp_erp_adapter_reopen (int ,int ,char*,int *) ;
 int _zfcp_erp_port_forced_reopen (int ,int ,char*,int *) ;
 int _zfcp_erp_port_reopen (int ,int ,char*,int *) ;
 int _zfcp_erp_unit_reopen (int ,int ,char*,int *) ;

__attribute__((used)) static void zfcp_erp_strategy_followup_failed(struct zfcp_erp_action *act)
{
 switch (act->action) {
 case 131:
  _zfcp_erp_adapter_reopen(act->adapter, 0, "ersff_1", ((void*)0));
  break;
 case 129:
  _zfcp_erp_port_forced_reopen(act->port, 0, "ersff_2", ((void*)0));
  break;
 case 130:
  _zfcp_erp_port_reopen(act->port, 0, "ersff_3", ((void*)0));
  break;
 case 128:
  _zfcp_erp_unit_reopen(act->unit, 0, "ersff_4", ((void*)0));
  break;
 }
}
