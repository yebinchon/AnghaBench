
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
typedef int port_t ;
struct TYPE_2__ {int rx_ring_buffers; int tx_ring_buffers; } ;


 int log_node (int *) ;
 TYPE_1__* port_to_card (int *) ;

__attribute__((used)) static inline u16 desc_abs_number(port_t *port, u16 desc, int transmit)
{
 u16 rx_buffs = port_to_card(port)->rx_ring_buffers;
 u16 tx_buffs = port_to_card(port)->tx_ring_buffers;

 desc %= (transmit ? tx_buffs : rx_buffs);
 return log_node(port) * (rx_buffs + tx_buffs) +
  transmit * rx_buffs + desc;
}
