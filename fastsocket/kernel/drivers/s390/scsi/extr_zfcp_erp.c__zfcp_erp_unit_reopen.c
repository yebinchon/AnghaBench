
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zfcp_unit {TYPE_1__* port; int status; } ;
struct zfcp_adapter {int dummy; } ;
struct TYPE_2__ {struct zfcp_adapter* adapter; } ;


 int ZFCP_ERP_ACTION_REOPEN_UNIT ;
 int ZFCP_STATUS_COMMON_ERP_FAILED ;
 int atomic_read (int *) ;
 int zfcp_erp_action_enqueue (int ,struct zfcp_adapter*,TYPE_1__*,struct zfcp_unit*,char*,void*) ;
 int zfcp_erp_unit_block (struct zfcp_unit*,int) ;

__attribute__((used)) static void _zfcp_erp_unit_reopen(struct zfcp_unit *unit, int clear, char *id,
      void *ref)
{
 struct zfcp_adapter *adapter = unit->port->adapter;

 zfcp_erp_unit_block(unit, clear);

 if (atomic_read(&unit->status) & ZFCP_STATUS_COMMON_ERP_FAILED)
  return;

 zfcp_erp_action_enqueue(ZFCP_ERP_ACTION_REOPEN_UNIT,
    adapter, unit->port, unit, id, ref);
}
