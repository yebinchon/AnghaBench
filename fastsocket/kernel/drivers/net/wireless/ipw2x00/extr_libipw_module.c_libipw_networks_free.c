
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct libipw_device {TYPE_1__** networks; } ;
struct TYPE_2__ {struct TYPE_2__* ibss_dfs; } ;


 int MAX_NETWORK_COUNT ;
 int kfree (TYPE_1__*) ;

__attribute__((used)) static inline void libipw_networks_free(struct libipw_device *ieee)
{
 int i;

 for (i = 0; i < MAX_NETWORK_COUNT; i++) {
  if (ieee->networks[i]->ibss_dfs)
   kfree(ieee->networks[i]->ibss_dfs);
  kfree(ieee->networks[i]);
 }
}
