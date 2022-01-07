
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_channel {scalar_t__ channel; TYPE_1__* efx; } ;
struct TYPE_2__ {scalar_t__ tx_channel_offset; scalar_t__ n_tx_channels; } ;



__attribute__((used)) static inline bool efx_channel_has_tx_queues(struct efx_channel *channel)
{
 return channel->channel - channel->efx->tx_channel_offset <
  channel->efx->n_tx_channels;
}
