
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* api; } ;
struct TYPE_4__ {int (* destroy_cm_core ) (TYPE_2__*) ;} ;


 TYPE_2__* g_cm_core ;
 int stub1 (TYPE_2__*) ;

int nes_cm_stop(void)
{
 g_cm_core->api->destroy_cm_core(g_cm_core);
 return 0;
}
