
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_channel {scalar_t__ rx_pkt_n_frags; } ;


 int __efx_rx_packet (struct efx_channel*) ;

__attribute__((used)) static inline void efx_rx_flush_packet(struct efx_channel *channel)
{
 if (channel->rx_pkt_n_frags)
  __efx_rx_packet(channel);
}
