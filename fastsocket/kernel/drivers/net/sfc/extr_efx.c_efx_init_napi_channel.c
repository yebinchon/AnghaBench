
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int net_dev; } ;
struct efx_channel {int napi_str; int napi_dev; struct efx_nic* efx; } ;


 int efx_poll ;
 int napi_weight ;
 int netif_napi_add (int ,int *,int ,int ) ;

__attribute__((used)) static void efx_init_napi_channel(struct efx_channel *channel)
{
 struct efx_nic *efx = channel->efx;

 channel->napi_dev = efx->net_dev;
 netif_napi_add(channel->napi_dev, &channel->napi_str,
         efx_poll, napi_weight);
}
