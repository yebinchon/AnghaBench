
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_5__ {int chan; TYPE_1__* card; } ;
typedef TYPE_2__ port_t ;
struct TYPE_4__ {int rx_ring_buffers; int tx_ring_buffers; } ;



__attribute__((used)) static inline u16 desc_abs_number(port_t *port, u16 desc, int transmit)
{
 u16 rx_buffs = port->card->rx_ring_buffers;
 u16 tx_buffs = port->card->tx_ring_buffers;

 desc %= (transmit ? tx_buffs : rx_buffs);
 return port->chan * (rx_buffs + tx_buffs) + transmit * rx_buffs + desc;
}
