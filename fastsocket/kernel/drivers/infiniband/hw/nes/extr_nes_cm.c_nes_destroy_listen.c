
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iw_cm_id {int (* rem_ref ) (struct iw_cm_id*) ;scalar_t__ provider_data; } ;
struct TYPE_5__ {TYPE_1__* api; } ;
struct TYPE_4__ {int (* stop_listener ) (TYPE_2__*,scalar_t__) ;} ;


 int NES_DBG_CM ;
 TYPE_2__* g_cm_core ;
 int nes_debug (int ,char*) ;
 int stub1 (TYPE_2__*,scalar_t__) ;
 int stub2 (struct iw_cm_id*) ;

int nes_destroy_listen(struct iw_cm_id *cm_id)
{
 if (cm_id->provider_data)
  g_cm_core->api->stop_listener(g_cm_core, cm_id->provider_data);
 else
  nes_debug(NES_DBG_CM, "cm_id->provider_data was NULL\n");

 cm_id->rem_ref(cm_id);

 return 0;
}
