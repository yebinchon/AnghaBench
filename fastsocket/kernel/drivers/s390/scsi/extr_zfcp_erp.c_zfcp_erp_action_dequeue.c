
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct zfcp_erp_action {int status; int action; struct zfcp_adapter* adapter; TYPE_2__* port; TYPE_1__* unit; int list; } ;
struct zfcp_adapter {int status; int erp_low_mem_count; int erp_total_count; } ;
struct TYPE_4__ {int status; } ;
struct TYPE_3__ {int status; } ;






 int ZFCP_STATUS_COMMON_ERP_INUSE ;
 int ZFCP_STATUS_ERP_LOWMEM ;
 int atomic_clear_mask (int ,int *) ;
 int list_del (int *) ;
 int zfcp_dbf_rec_action (char*,struct zfcp_erp_action*) ;

__attribute__((used)) static void zfcp_erp_action_dequeue(struct zfcp_erp_action *erp_action)
{
 struct zfcp_adapter *adapter = erp_action->adapter;

 adapter->erp_total_count--;
 if (erp_action->status & ZFCP_STATUS_ERP_LOWMEM) {
  adapter->erp_low_mem_count--;
  erp_action->status &= ~ZFCP_STATUS_ERP_LOWMEM;
 }

 list_del(&erp_action->list);
 zfcp_dbf_rec_action("eractd1", erp_action);

 switch (erp_action->action) {
 case 128:
  atomic_clear_mask(ZFCP_STATUS_COMMON_ERP_INUSE,
      &erp_action->unit->status);
  break;

 case 129:
 case 130:
  atomic_clear_mask(ZFCP_STATUS_COMMON_ERP_INUSE,
      &erp_action->port->status);
  break;

 case 131:
  atomic_clear_mask(ZFCP_STATUS_COMMON_ERP_INUSE,
      &erp_action->adapter->status);
  break;
 }
}
