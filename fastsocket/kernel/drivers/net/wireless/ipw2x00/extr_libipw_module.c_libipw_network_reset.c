
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libipw_network {int * ibss_dfs; } ;


 int kfree (int *) ;

void libipw_network_reset(struct libipw_network *network)
{
 if (!network)
  return;

 if (network->ibss_dfs) {
  kfree(network->ibss_dfs);
  network->ibss_dfs = ((void*)0);
 }
}
