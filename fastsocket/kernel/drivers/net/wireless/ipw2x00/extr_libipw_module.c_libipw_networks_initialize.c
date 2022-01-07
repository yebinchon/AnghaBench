
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct libipw_device {int network_free_list; TYPE_1__** networks; int network_list; } ;
struct TYPE_2__ {int list; } ;


 int INIT_LIST_HEAD (int *) ;
 int MAX_NETWORK_COUNT ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static void libipw_networks_initialize(struct libipw_device *ieee)
{
 int i;

 INIT_LIST_HEAD(&ieee->network_free_list);
 INIT_LIST_HEAD(&ieee->network_list);
 for (i = 0; i < MAX_NETWORK_COUNT; i++)
  list_add_tail(&ieee->networks[i]->list,
         &ieee->network_free_list);
}
