
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_tx_queue {int dummy; } ;
struct efx_channel {struct efx_tx_queue* tx_queue; } ;


 int EFX_BUG_ON_PARANOID (int) ;
 unsigned int EFX_TXQ_TYPES ;
 int efx_channel_has_tx_queues (struct efx_channel*) ;

__attribute__((used)) static inline struct efx_tx_queue *
efx_channel_get_tx_queue(struct efx_channel *channel, unsigned type)
{
 EFX_BUG_ON_PARANOID(!efx_channel_has_tx_queues(channel) ||
       type >= EFX_TXQ_TYPES);
 return &channel->tx_queue[type];
}
