
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zfcp_erp_action {TYPE_1__* adapter; int list; } ;
struct TYPE_2__ {int erp_running_head; } ;


 int list_move (int *,int *) ;
 int zfcp_dbf_rec_action (char*,struct zfcp_erp_action*) ;

__attribute__((used)) static void zfcp_erp_action_to_running(struct zfcp_erp_action *erp_action)
{
 list_move(&erp_action->list, &erp_action->adapter->erp_running_head);
 zfcp_dbf_rec_action("erator1", erp_action);
}
